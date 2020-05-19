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

#ifndef FSM_H
#define FSM_H

#if defined(ARDUINO) && ARDUINO >= 100
#  include <Arduino.h>
#else
#  include <WProgram.h>
#endif

struct State {
    explicit State(void(*on_enter)(), void(*on_state)() = nullptr, void(*on_exit)() = nullptr);
    void (*on_enter)();
    void (*on_state)();
    void (*on_exit)();
};

class Fsm {
    static constexpr size_t MAX_TRANSITIONS = 20;

public:

    class Timer;
    explicit Fsm(State *initial_state);
    ~Fsm();

    void add_transition(State *state_from, State *state_to, int event, void (*on_transition)() = nullptr);

    Timer add_timed_transition(State *state_from, State *state_to, unsigned long interval, void (*on_transition)() = nullptr);

    /**
     * checks the timed transitions for the current state and if timeout occured
     * trigger appropriate transition. Timed transitions are checked and triggered in the same order
     * as added
     */
    void check_timed_transitions();

    /**
     * looks for the current state's timed transitions to the target state and reset the timer
     * @param state_to target state to reset the timed transition for. If NULL reset all current
     * state timers
     */
    void reset_timed_transition(State *state_to);

    /**
     * trigger transition with the event
     * @param event enum that defines the trigger
     */
    void trigger(int event);

    void run_machine();

    /**
     * returns current state (helpful if the same handler is used to drive many similar states)
     * @return current state
     */
    State *get_current_state();

private:

    struct Transition {
        State *state_from;
        State *state_to;
        int event;
        void (*on_transition)();
    };
    struct TimedTransition {
        Transition transition;
        unsigned long start;
        unsigned long interval;
    };

    static Transition create_transition(State *state_from, State *state_to, int event, void (*on_transition)());

    void make_transition(Transition *transition);

#ifdef USE_HARD_FSM
    Transition m_transitions[MAX_TRANSITIONS];
    TimedTransition m_timed_transitions[MAX_TRANSITIONS];
#else
    Transition *m_transitions;
    TimedTransition *m_timed_transitions;
#endif
    State *m_current_state;
    int m_num_transitions;

    int m_num_timed_transitions;
    bool m_initialized;

public:

    class Timer {
    public:

        explicit Timer(const TimedTransition *pTransition);
      [[nodiscard]] const TimedTransition *getTimedTransitions() const;

      private:
        const TimedTransition *m_timed_transitions;
    };
};

#endif // ifndef FSM_H
