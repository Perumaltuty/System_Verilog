`timescale 1ns / 1ps
module multi_unpacked_array;
  int abc[2][3];
  initial begin
    foreach(abc[i]) begin
      foreach(abc[j]) begin
        abc[i][j] = $urandom_range(10,50);
      end
    end 
   $display("\n displaying values of 2 dimensional unpacked arrays");
       foreach(abc[i]) begin
      foreach(abc[j]) begin
        $display("values of abc[%0d][%0d] = %0d",i,j,abc[i][j]);
      end
    end
 $display("\n displaying values of 2 dimensional unpacked array in one line");
    $display("abc = %p",abc);
     end
endmodule
