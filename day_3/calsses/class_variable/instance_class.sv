`timescale 1ns / 1ps
class ta;
  const int a;
  string b;
  function new();
    a=5;
    b="bhavana";
  endfunction  
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction
endclass
module instance_class;
  ta t1;
  initial begin:BEGIN_I
    t1=new();
    t1.b="bjt";
    $display("");
    t1.display();
    $display("");
  end
  endmodule


//a=5,b=s0dbjt
