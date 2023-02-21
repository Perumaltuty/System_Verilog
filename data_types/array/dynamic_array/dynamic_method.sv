`timescale 1ns / 1ps
module dynamic_method;
  int xyz [];
 initial begin
   xyz = new[10];
 xyz = '{11,12,13,14,15,16,17,18,19,20};
    $display("\n dynamic array values");
    foreach(xyz[i])begin
      $display("value of xyz[%0d]=%0d",i,xyz[i]);
    end
 $display("\n displaying the array size");
    $display("%0d",xyz.size());
    xyz.delete();
    $display("\n after deleting all elements, size of the array ");
    $display("%0d",xyz.size());
    $display("");
  end
endmodule 
