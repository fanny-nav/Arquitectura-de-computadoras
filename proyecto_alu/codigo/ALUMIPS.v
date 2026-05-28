module ALUMIPS (
    input [31:0] A,
    input [31:0]B,
    input [3:0] Sel,
    output [31:0] Resultado
);

    wire [32:0] w_suma;
    wire [32:0] w_resta;
    wire [32:0] w_or;
    wire [32:0] w_and;
    wire [32:0] w_slt;

    S32_Comp S32_Comp_1 (.So1(A), .So2(B), .R5(w_suma));
    R32_Comp R32_Comp_1 (.Ro1(A), .Ro2(B), .RR(w_resta));
    OR32_comp OR32_comp_1 (.Oo1(A), .Oo2(B), .RO(w_or));
    AND32_Comp AND32_Comp_1 (.Ao1(A), .Ao2(B), .AR(w_and));
    SLT32 SLT32_1 (.Slto1(A), .Slto2(B), .Rslt(w_slt));

    MUX5a1 MUX5a1_1 (
        .SUMA(w_suma[31:0]),
        .RESTA(w_resta[31:0]),
        .OR(w_or[31:0]),
        .AND(w_and[31:0]),
        .SLT(w_slt[31:0]),
        .ALUctl(Sel),
        .R(Resultado)
    );
endmodule