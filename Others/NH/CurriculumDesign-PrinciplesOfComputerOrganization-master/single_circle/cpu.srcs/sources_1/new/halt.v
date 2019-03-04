module halt(
    syscall,equal,swi_halt,halt,go
    );
    input syscall,equal,swi_halt,go;
    output halt;
    assign halt = (((~syscall) | equal ) & swi_halt)|go;
endmodule
