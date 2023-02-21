`timescale 1ns / 1ps
module time_data_type;  
 time time_data;
 
initial begin
  
  $display("\ndefault value of time = %0t",time_data);
  
  #5;  
  time_data = $time;

  $display("\nvalue of time = %0t\n", time_data);

end
endmodule
