`timescale 1ns / 1ps
module top();
and_if inf();
andg a1(.input_a(inf.input_a), .input_b(inf.input_b), .output_y(inf.output_y));
tb a2(inf);
endmodule
