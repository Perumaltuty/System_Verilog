`timescale 1ns / 1ps
class ome;
  string switch;
  string fan = "OFF";
extern function void display();
endclass
function void ome::display();
  string switch="OFF";
  $display("The switch is %0s that's why fan is %0s",fan,switch);
endfunction
module extern_example;
  ome h;
  initial begin
    h=new();
    $display("Using extern keyword we are creating prototype for our function in the class");
    $display("Then we are declaring the function outside the class");
    h.display;
  end
endmodule


//Using extern keyword we are creating prototype for our function in the class
//Then we are declaring the function outside the class
//The switch is OFF that's why fan is OFF
