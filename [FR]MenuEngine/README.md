
Steps:
At 0x806F282 (control loop of normal menu) there is a hijack, which sends the input_handler to the C code.
input_handler checks whether A, Select, start or B has been pressed and knows whether we are currently in the main menu or in the side.
FROM there input_handler eventually passes control to poketools for opening choices.
If a temporary menu option is chosen, control passes to the engine which reads the menu config and reacts appropriately

TODOS:
Menu name reflected on the configurable menu
Callable from DONE object (The BY_ITEM macro takes an id of the array of implemented features and creates 3 functions. The gui_##id##_new_gui_by_item function, if placed as an offset of an item, opens that gui)
insertion instead of automatic object?
Bg must be a func provider to customize it DONE
swap graphic? whynot

in this demo, the teachy tv redirects to gui_1 (main.s)
