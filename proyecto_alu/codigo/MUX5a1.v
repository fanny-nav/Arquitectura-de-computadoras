module MUX5a1(
    input [31:0]SUMA,
    input [31:0]RESTA,
    input [31:0]OR,
    input [31:0]AND,
    input [31:0]SLT,
    input [3:0]ALUctl,
    output reg [31:0]R
);
    always @(ALUctl)
    begin
        case(ALUctl)
            4'b0000:R=SUMA;
            4'b0001:R=RESTA;
            4'b0010:R=OR;
            4'b0011:R=AND;
            4'b0100:R=SLT;
        endcase
    end
endmodule