module AND32_Comp (
    input [31:0] Ao1,
    input [31:0] Ao2,
    output [32:0]AR
);
    assign AR = Ao1 & Ao2;
endmodule