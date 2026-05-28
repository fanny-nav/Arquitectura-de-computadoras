module R32_Comp (
    input [31:0]Ro1,
    input [31:0]Ro2,
    output [32:0]RR
);
    assign RR = Ro1 - Ro2;
endmodule