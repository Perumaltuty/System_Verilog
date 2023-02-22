`timescale 1ns / 1ps
module if_elseif_else;
int a , b,c ;
initial begin 
 a = -12;
 b = 12;
 c = 10;
 $display ("Assign the value of a =%0d  b = %0d  c = %0d ", a,b,c);
  if (a>0)  
 begin 
  $display ("a is a postive number");
 end 
 else if (a==0) begin  // false condition  
    $display ("a is zero number ");
 end 
   else if (b<c)begin // false condition
         $display ("b is less than c ");
   end 
   else begin 
     $display ("none-condition-blocks");
       end 
    end 
 endmodule 
