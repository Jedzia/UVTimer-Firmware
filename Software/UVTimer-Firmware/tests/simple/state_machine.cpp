#include <iostream>
//#include <conio.h>
#include <windows.h>

struct instance_data {

};


typedef enum { STATE_INITIAL, STATE_FOO, STATE_BAR, NUM_STATES } state_t;
typedef struct instance_data instance_data_t;
typedef state_t state_func_t( instance_data_t *data );

state_t do_state_initial( instance_data_t *data );
state_t do_state_foo( instance_data_t *data );
state_t do_state_bar( instance_data_t *data );

state_func_t* const state_table[ NUM_STATES ] = {
        do_state_initial, do_state_foo, do_state_bar
};

state_t run_state( state_t cur_state, instance_data_t *data ) {
    return state_table[ cur_state ]( data );
};

state_t do_state_initial(instance_data_t *data) {
    std::cout << "do_state_initial" << "\n";
    return STATE_BAR;
}

state_t do_state_foo(instance_data_t *data) {
    std::cout << "do_state_foo" << "\n";
    return STATE_BAR;
}

state_t do_state_bar(instance_data_t *data) {
    std::cout << "do_state_bar" << "\n";

    //if(kbhit())
        if(GetAsyncKeyState(VK_RETURN))
    {
        std::cout << "kbhit" << "\n";
        //auto strInput=getch();
        return STATE_FOO;
    }
        exit(1);
    return STATE_FOO;
}

/** Program Entry Function, main
 *  The designated start of the program.
 *  @return program exit code.
 */
 int main() { // the main code portion of a C++ program
    state_t cur_state = STATE_INITIAL;
    instance_data_t data;

    while ( 1 ) {
        cur_state = run_state( cur_state, &data );

        // do other program logic, run other state machines, etc
    }
    return 0; // conventional
}

