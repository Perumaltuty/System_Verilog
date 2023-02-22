`timescale 1ns / 1ps
module unique_case_defult;
bit [1:0] x;
initial begin
  x = 2'b01;

//Here no condition is true, default statement will get executed.
  unique case(x)
  00 : $display(" Value of x is = %0b", x);
  // 01 : $display(" Value of x is = %0b", x);
  10 : $display(" Value of x is = %0b", x);
  11 : $display(" Value of x is = %0b", x);
  default : $display(" Value of x is = %0b", x);

endcase
end
endmodule
