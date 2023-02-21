`timescale 1ns / 1ps
module unpacked_array;
  byte a[8];
  int abc[10];
 initial begin
    a = '{1,2,3,4,5,6,7,8};
     foreach(abc[i]) begin
      abc[i] =$urandom_range(10,50);
      //suma random use pananu vai 
      //abc = '{303379748,-1064739199,-2071669239,-1309649309,112818957,1189058957,-1295874971,-1992863214,15983361,114806029}
      //mela ula output tha varum
    end 
   $display("\n displaying values of unpacked arrays");
       foreach(a[i]) begin
      $display("values of a[%0d] = %0d",i,a[i]);
    end
  $display("\n displaying another unpacked array values in one line");
    $display("abc = %p",abc);
  
  end
endmodule
