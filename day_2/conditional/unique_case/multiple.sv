`timescale 1ns / 1ps
module unque_multiple_case;
bit [1:0] x;
initial begin
   x=2'b00;
  unique case(x)

  00 : $display("a" );
  00 : $display("e" );
  01 : $display("d" );
  10  : $display("c");
  11  :$display("b" );
endcase
end
endmodule
// only first match is printed in unique for case all the mathcing content are printed
