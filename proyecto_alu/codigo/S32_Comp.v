module S32_Comp (
    input [31:0]So1,
    input [31:0]So2,
    output [32:0]R5
);
    assign R5 = So1+So2;
endmodule