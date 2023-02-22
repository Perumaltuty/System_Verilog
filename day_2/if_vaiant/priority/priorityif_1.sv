`timescale 1ns / 1ps
module priorityif_1;
int a;  
byte b;
int c;
initial begin 
 $display ("The default size of a = ",$bits(a));
 $display ("The default size of b = ",$bits(b));
 $display ("The default size of c = ",$bits(c));
 
 a = 10; 
 b= 12;   
 c=13;    
 priority if (a == $bits(a))
   $display ("Here , value assign to a = default size of a ");
 else if ($bits(a)== $bits(c)) 
   $display ( " Default size of a = default size of c ");
 else if (a>b)
   $display ("value of a is greater than b ");
 $display ("Out from the block ");
end 
endmodule 
