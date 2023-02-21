`timescale 1ns / 1ps


module shortint_to_int_long_int();

 shortint shortint_data;
 int int_data;
 longint longint_data;

 initial begin

   shortint_data = 8'b10110011; 

   $display("\nsize of shortint = %0d",$size(shortint_data));
   $display("\nsize of int = %0d",$size(int_data));
   $display("\nsize of longint = %0d",$size(longint_data));
   $display("before casting shortint_data = %b",shortint_data);

   int_data = int'(shortint_data);  
   $display("after casting shortint to int = %b\n",int_data);

   longint_data = longint'(shortint_data); 
   $display("after casting shortint to longint = %b\n",longint_data);

 end
endmodule 

