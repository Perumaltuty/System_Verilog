`timescale 1ns / 1ps
module int_data_type;
 int int_data; 
initial begin
  
    $display("\nDefault value %0b",int_data);
  
  int_data = 32'b110100101010; 
   $display("\n int = %0b", int_data);

  int_data = 2147483647;

  $display("\n maximum value of int = %0b\n", int_data);
end
endmodule
