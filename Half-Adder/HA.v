module HA(LEDR, SW);
  input [1:0] SW;
  output [1:0] LEDR;
  assign LEDR[0] = SW[0] ^ SW[1]; // sum
  assign LEDR[1] = SW[0] & SW[1]; // carry
endmodule
