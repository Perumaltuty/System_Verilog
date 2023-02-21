`timescale 1ns / 1ps

module real_to_int();

 real real_data;
 int int_data;

 initial begin

   real_data = 8.04; 

   $display("\nbefore casting real_data = %0.2f",real_data);

   int_data = int'(real_data); 

   $display("after casting real to int = %0d\n",int_data);

 end
endmodule 
