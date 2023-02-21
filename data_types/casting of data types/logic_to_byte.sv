`timescale 1ns / 1ps


module logic_to_byte();

 logic [3:0] logic_data;
 byte byte_data;

 initial begin

   logic_data = 4'b1xx1; 

   $display("\nbefore casting logic_data = %0b",logic_data);

   byte_data = byte'(logic_data);

   $display("after casting logic to byte = %b\n",byte_data);

 end
endmodule 
