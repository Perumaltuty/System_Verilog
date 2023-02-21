`timescale 1ns / 1ps
module real_data_type;
 real real_data; 
initial begin
  $display("\n Default value = %0d",real_data);
  
  real_data =4.43; 

  $display("\nvalue of real = %f\n", real_data);

 end
endmodule
