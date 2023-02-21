`timescale 1ns / 1ps
module integer_data_type;
 integer integer_data; 
 
initial begin
  
  
  $display("\nDefault value= %0b",integer_data);
  
  integer_data = 32'b11x0_101x_1xz0_0111; 
  $display("\nvalue of integer = %0b\n", integer_data);
  
 end
endmodule
