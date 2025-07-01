module FA(LEDR, SW);
  input [2:0] SW;                              // x=SW[0], y=SW[1], cin = SW[2]
  output [1:0] LEDR;                           // S= LEDR[0], C=LEDR[1]
  wire S1, S2, C1, C2;                         // Define four intermediate variables.
  HA H1 (.LEDR({C1, S1}), .SW(SW[1:0]));       // Instantiate first HA.
  HA H2 (.LEDR({C2, S2}), .SW({SW[2], S1}));   // Instantiate second HA. Connect carefully internal wires. 
  assign LEDR[1] = C1 | C2;
  assign LEDR[0] = S2;
endmodule
