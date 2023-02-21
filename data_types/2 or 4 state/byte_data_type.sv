`timescale 1ns / 1ps
module byte_data_type();   
byte byte_data;   
initial begin
    $display("\nDefault value of byte data = %0b", byte_data);

  byte_data = 8'b10101101;  

  $display("\nvalue of byte data = %0b", byte_data);
  
  end
  endmodule
