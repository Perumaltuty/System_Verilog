`timescale 1ns / 1ps
module if_else;
byte a;
initial begin
  a = -1;
  $display ("Assign the value of a = %0d ",a);
   if(a>0)begin
     $display ("a is a postive number");
  end 
  else 
    $display ("Number is negative");
end 
endmodule 
