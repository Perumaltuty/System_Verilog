`timescale 1ns / 1ps
virtual class Ab;
  int a,b,c;
  pure virtual function void disp();
  pure virtual task sum();            
endclass                       
class B extends Ab;
  virtual function void disp();
    a =10;
    $display("1.Value of a = %0d, b = %0d, c = %0d",a,b,c);
  endfunction
  virtual task sum();
   c = a+b;
   $display("2.Value of a = %0d, b = %0d, c = %0d",a,b,c);
  endtask                                               
endclass                                                 
module pure_vir_fun_ex();                                          
  B b1;
  initial begin
    b1 = new;
    b1.disp();
    b1.b = 35;
    b1.sum;
    end                                                                                   
endmodule



//1.Value of a = 10, b = 0, c = 0
//2.Value of a = 10, b = 35, c = 45
// pure virtual function is a member of an "abstract" base class. You cannot create an object of
//  an abstract class. No implementation need be provided for the pure virtual function in the base 
//  class but it must be overridden in a derived class if you want to create objects of that type. 
//  Pure virtual functions are used to create "interface" classes 
