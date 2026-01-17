.global gdt_flush
.extern gp

gdt_flush:
    mov 4(%esp), %eax   # Get the pointer to the GDT, passed as a parameter
    lgdt (%eax)         # Load the new GDT pointer into GDTR

# flat model

    mov $0x10, %ax      # 0x10 is the offset in the GDT to our data segment
    mov %ax, %ds        # Load Data Segment
    mov %ax, %es        # Load Extra Segment
    mov %ax, %fs        # Load Additional segment 1 (free use)
    mov %ax, %gs        # Load Additional segment 2 (free use)
    mov %ax, %ss        # Load Stack segment

    ljmp $0x08, $flush2 # 0x08 is the offset to our code segment: Far jump!

flush2:
    ret
