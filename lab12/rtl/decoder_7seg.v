module decoder_7seg (
  input  [3:0] ain,
  output [7:0] seg,
  output [5:0] dig
);
  reg [7:0] Seg;
  assign dig = 6'b011111;
  always @(ain)
    case (ain)
      4'b0000: Seg = 8'b11111100;
      4'b0001: Seg = 8'b01100000;
      4'b0010: Seg = 8'b11011010;
      4'b0011: Seg = 8'b11110010;
      4'b0100: Seg = 8'b01100110;
      4'b0101: Seg = 8'b10110110;
      4'b0110: Seg = 8'b00111110;
      4'b0111: Seg = 8'b11100000;
      4'b1000: Seg = 8'b11111110;
      4'b1001: Seg = 8'b11100110;
      default: Seg = 8'b00000000;
    endcase
  assign seg = Seg;
endmodule

