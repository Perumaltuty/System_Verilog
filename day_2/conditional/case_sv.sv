`timescale 1ns / 1ps
module case_sv;
bit [1:0] x;
initial begin
  x = 2'b01;
  case(x)
    00 : $display("Value of x = %0b", x);
    01 : $display("Value of y = %0b",x);
    10 : $display("Value of z = %0b",x);
    11 : $display("Value of a = %0b" ,x);
    default : $display("Value of x is not found");
  endcase
end
endmodule
