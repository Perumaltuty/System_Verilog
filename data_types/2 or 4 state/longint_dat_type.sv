`timescale 1ns / 1ps
module longint_data_type;  
 longint longint_data;  
initial begin
    $display("\nDefault value = %0b",longint_data);
  
  longint_data = 64'b11x01xz001x01010; 
  $display("\n value of longint = %0b\n", longint_data);

 end
endmodule
