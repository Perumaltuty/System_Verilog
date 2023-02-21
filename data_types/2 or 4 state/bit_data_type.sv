`timescale 1ns / 1ps
module bit_data_type_;   
bit single_bit_data;   
bit [3:0] multi_bit_data;

initial begin
  $display("\nDefault value= %0b", single_bit_data);
  $display("Default value = %0b", multi_bit_data);

  single_bit_data =1;  
  multi_bit_data = 4'b1100; 

  $display("\n single bit data = %0b", single_bit_data);
  $display("4 bit data = %0b", multi_bit_data);

  multi_bit_data = 4'b11xz;   
  $display("\nx and z of 4-bit data = 4'b11xz");


    $display("\n4 bit data = %0b\n", multi_bit_data);
  end
endmodule
