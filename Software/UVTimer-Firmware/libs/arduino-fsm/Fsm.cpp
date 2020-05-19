// This file is part of arduino-fsm.
//
// arduino-fsm is free software: you can redistribute it and/or modify it under
// the terms of the GNU Lesser General Public License as published by the Free
// Software Foundation, either version 3 of the License, or (at your option)
// any later version.
//
// arduino-fsm is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
// FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License
// for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with arduino-fsm.  If not, see <http://www.gnu.org/licenses/>.

#include "Fsm.h"

State::State(void(*on_enter)(), void(*on_state)(), void(*on_exit)()) : on_enter(on_enter),
    on_state(on_state),
    on_exit(on_exit) {}

Fsm::Fsm(State *initial_state) : m_current_state(initial_state),
#ifndef USE_HARD_FSM
    m_transitions(nullptr),
#endif
    m_num_transitions(0),
    m_num_timed_transitions(0),
    m_initialized(false) {}

Fsm::~Fsm() {
#ifndef USE_HARD_FSM
    free(m_transitions);
    free(m_timed_transitions);
    m_transitions = nullptr;
    m_timed_transitions = nullptr;
#endif
}

void Fsm::add_transition(State *state_from, State *state_to, int event, void (*on_transition)()) {
    if(state_from == nullptr || state_to == nullptr) {
        return;
    }

    // ToDo: variant with fixed size transition pool to get rid of the dynamic allocation
    Transition transition = Fsm::create_transition(state_from, state_to, event, on_transition);
#ifndef USE_HARD_FSM
    m_transitions = (Transition *)realloc(m_transitions, (m_num_transitions + 1) * sizeof(Transition));
#endif
    m_transitions[m_num_transitions] = transition;
    m_num_transitions++;
}

Fsm::Timer Fsm::add_timed_transition(State *state_from, State *state_to, unsigned long interval, void (*on_transition)()) {
    if(state_from == nullptr || state_to == nullptr) {
        return Timer(nullptr);
    }

    Transition transition = Fsm::create_transition(state_from, state_to, 0, on_transition);

    TimedTransition timed_transition;
    timed_transition.transition = transition;
    timed_transition.start = 0;
    timed_transition.interval = interval;

#ifndef USE_HARD_FSM
    m_timed_transitions = (TimedTransition *)realloc(m_timed_transitions, (m_num_timed_transitions + 1) * sizeof(TimedTransition));
#endif
    m_timed_transitions[m_num_timed_transitions] = timed_transition;
    auto *address = &m_timed_transitions[m_num_timed_transitions];
    m_num_timed_transitions++;
    return Timer(address);
} // Fsm::add_timed_transition

Fsm::Transition Fsm::create_transition(State *state_from, State *state_to, int event, void (*on_transition)()) {
    Transition t;
    t.state_from = state_from;
    t.state_to = state_to;
    t.event = event;
    t.on_transition = on_transition;

    return t;
}

void Fsm::trigger(int event) {
    if(m_initialized) {
        // Find the transition with the current state and given event.
        for(int i = 0; i < m_num_transitions; ++i) {
            if(m_transitions[i].state_from == m_current_state && m_transitions[i].event == event) {
                Fsm::make_transition(&(m_transitions[i]));
                return;
            }
        }
    }
}

State *Fsm::get_current_state() {
    return m_current_state;
}

void Fsm::check_timed_transitions() {
    for(int i = 0; i < m_num_timed_transitions; ++i) {
        TimedTransition *transition = &m_timed_transitions[i];
        if(transition->transition.state_from == m_current_state) {
            if(transition->start == 0) {
                transition->start = millis();
            } else {
                unsigned long now = millis();
                if(now - transition->start >= transition->interval) {
                    Fsm::make_transition(&(transition->transition));
                    transition->start = 0;
                }
            }
        }
    }
}

void Fsm::reset_timed_transition(State *state_to) {
    for(int i = 0; i < m_num_timed_transitions; ++i) {
        TimedTransition *transition = &m_timed_transitions[i];
        if(transition->transition.state_from == m_current_state) {
            if(state_to == nullptr || (state_to != nullptr && state_to == transition->transition.state_to)) {
                transition->start = millis();
            }
        }
    }
}

void Fsm::run_machine() {
    // first run must exec first state "on_enter"
    if(!m_initialized) {
        m_initialized = true;
        if(m_current_state->on_enter != nullptr) {
            //Serial.println("run_machine 1");
            m_current_state->on_enter();
            //Serial.println("run_machine 2");
        }
    }

    if(m_current_state->on_state != nullptr) {
        //Serial.println("run_machine 3");
        m_current_state->on_state();
        //Serial.println("run_machine 4");
    }

    Fsm::check_timed_transitions();
} // Fsm::run_machine

void Fsm::make_transition(Transition *transition) {
    // Execute the handlers in the correct order.
    //Serial.println("make_transition");

    if(transition->state_from->on_exit != nullptr) {
        transition->state_from->on_exit();
    }

    if(transition->on_transition != nullptr) {
        transition->on_transition();
    }

    if(transition->state_to->on_enter != nullptr) {
        transition->state_to->on_enter();
    }

    m_current_state = transition->state_to;

    //Initialice all timed transitions from m_current_state
    unsigned long now = millis();

    for(int i = 0; i < m_num_timed_transitions; ++i) {
        TimedTransition *ttransition = &m_timed_transitions[i];
        if(ttransition->transition.state_from == m_current_state) {
            ttransition->start = now;
        }
    }
} // Fsm::make_transition

Fsm::Timer::Timer(const Fsm::TimedTransition *pTransition) : m_timed_transitions(pTransition) {}
const Fsm::TimedTransition *Fsm::Timer::getTimedTransitions() const {
    return m_timed_transitions;
}
