`timescale 1ns / 1ps
module non_blocking_swap();
  int number_1=5;
  int number_2=2;
  initial
  begin
    $display("Inital : number_1=%0d & number_2=%0d",number_1,number_2);
  end
  initial
  begin
    $display("swapping : ");
    number_2<=number_1;
    number_1<=number_2;
    $display("Display : number_1=%0d & number_2=%0d",number_1,number_2); 
    $monitor("Monitor : number_1=%0d & number_2=%0d",number_1,number_2);
  end
endmodule
