`timescale 1ns / 1ps

module bit_to_bytes();
 
 byte byte_data;
 bit [3:0] bit_data;

 initial begin

   bit_data = 4'b1xz1; 

   $display("\nbefore casting bit_data = %0b",bit_data);

   byte_data = byte'(bit_data); 

   $display("after casting bit to byte = %b\n",byte_data);

 end
endmodule 
