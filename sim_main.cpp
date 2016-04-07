#include <iostream>

#include "Vour.h"
#include "verilated.h"
int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    Vour* top = new Vour;
    while (!Verilated::gotFinish()) {
      if (top->clock)
        cout << "y is " << top->y << endl;
      top->clock ^= 1;
      top->eval();
    }
    delete top;
    exit(0);
}
