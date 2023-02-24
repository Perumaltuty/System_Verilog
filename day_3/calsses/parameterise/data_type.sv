`timescale 1ns / 1ps
class data #(parameter a = 2,type team=string);//parameter declaration
  bit [a-1:0]d;
  team c;
  function new();
    d=20;
    c="Mirafra";
  endfunction
  function void disp();
    $display("d=%0d,c=%0s",d,c);
  endfunction
endclass
data#(4) p1;
module data_type;
    initial begin
    p1=new();
    $display("");
    $display("contents of p1");
    p1.disp();
    $display("");
  end
endmodule

//contents of p1
//d=4,c=Mirafra
