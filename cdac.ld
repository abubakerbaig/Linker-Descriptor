ENTRY(_Reset)
SECTIONS
{
    . = 0X10000;
    .startup . : {startup.o(.text)}
    .text : {*(.text)}
    .data : {*(.data)}
    .bss : {*(.bss COMMON)}
    . = ALIGN(8);
    . = . + 0x1000; /*4KB of stack memory*/
    stack_top = .;
}