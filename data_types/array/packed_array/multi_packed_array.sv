`timescale 1ns / 1ps
module multi_packed_array();
  bit [2:0][3:0] xyz;
  initial begin
     xyz = 12'hdfe;
   $display("\n example of 2 dimensional array");
    $display("/n array value printing in one line");
    $display("value of array xyz = %p",xyz);
    $display("// array value printing bit by bit");
   foreach(xyz[i]) begin
      foreach(xyz[j]) begin
        $display("value of xyz[%0d][%0d] = %0d",i,j,xyz[i][j]);
      end
    end  
  end
endmodule
