`timescale 1ns / 1ps
class ata;
  string a;
  const int b=1;  
  function new();
    a="team";
  endfunction  
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction
endclass
module global_class;
 ata p1;
  initial begin
    p1=new();
    $display(""); 
    p1.display();
    $display("");
  end
endmodule

//a=teamd,b=1
