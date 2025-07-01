module four_bit_adder(LEDR, SW);
input [8:0] SW; // A=SW[8:5], B=SW[4:1], Cin=SW[0]
output [4:0] LEDR; // Cout= LEDR[4], S=LEDR[3:0]
wire C1, C2, C3;
FA F1({C1, LEDR[0]}, {SW[0], SW[5], SW[1]}); 
FA F2({C2, LEDR[1]}, {C1, SW[6], SW[2]);
FA F3({C3, LEDR[2]}, {C2, SW[7], SW[3]});
FA F4({LEDR[4], LEDR[3]}, {C3, SW[8], SW[4]});
endmodule
