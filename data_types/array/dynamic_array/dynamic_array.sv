`timescale 1ns / 1ps
module dynamic_aray;
  int abc [];
  initial begin
     $display("");
    $display("// setting array size to seven");
    abc = new[3];
    abc = '{1,2,3};
    $display("");
    $display("// dynamic array values");
    foreach(abc[i])begin
      $display("value of abc[%0d]=%0d",i,abc[i]);
    end
  end
endmodule

