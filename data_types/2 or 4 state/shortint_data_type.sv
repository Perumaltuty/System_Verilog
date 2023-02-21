`timescale 1ns / 1ps
module shortint_data_type;  
 shortint shortint_data; 
 
initial begin
  
  
  $display("\nDefault value  = %0b",shortint_data);
  
  shortint_data = 16'b1101001010101001;
   $display("\n value of shortint = %0b", shortint_data);

  shortint_data = 32767; 

  $display("\n value of shortint = %0b\n", shortint_data);
end
endmodule
