#include <stdio.h>
volatile unsigned int *const UART0DR = (unsigned int *)0x101f1000;

void print_UART0(const char *s) {
    while(s!=NULL)  {
        *UART0DR = (unsigned int )(*s);
        s++;
    }
}

void c_entry()   {
    print_UART0("Hello World\n");
}