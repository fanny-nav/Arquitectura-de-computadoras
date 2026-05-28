

module TOP(
	input CLK
);

wire c1,c2,c3;

MASTER puppeter (.CLK(CLK), .mosi(c1), .miso(c3), .ss(c2));
SLAVE mupet (.CLK(CLK), .mosi(c1), .miso(c3), .ss(c2));

endmodule

