`timescale 1ns / 1ps
module dynamic_unbound;
int a [];
initial
begin
  a = new[8];
  a ='{1,2,3,6,27,10,5,9};
  $display(" \n The dynamic array elements: \n %0p",da);
 $display(" \n printring the value of  the each index place");
  foreach(a[i])
    $display("a[%0d] = %0d",i,a[i]);
    $display("");
    $display("//out of bound ", "display default value of data_type ","\n\tda[14]=%0d",a[14]);
$display(" ");
  end
    endmodule
