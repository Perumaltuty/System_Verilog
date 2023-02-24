`timescale 1ns / 1ps
class A;                                        
  int a=5;                                      
  function void disp();                         
    $display("1.Value of a = %0d",a);
  endfunction
  endclass
class B extends A;
int a = 6; 
function void display(); 
    $display("2.Value of a = %0d",a);
  endfunction
endclass
module inheritance();
   B b1; 
   initial begin
    b1 = new;  
    b1.a = 10; 
    b1.disp(); 
    b1.display();    
  end
endmodule

//  1.Value of a = 5
//2.Value of a = 10
