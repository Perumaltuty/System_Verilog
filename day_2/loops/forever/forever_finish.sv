`timescale 1ns / 1ps
module forever_finish;
  int a; 
  initial 
  begin 
   forever
    begin
      $display("\t @ %0d ns Iteration %0d",$time,a);
      a++;
      #4;
    end
  end
initial begin
  #20 $display("\n\t@ %0d ns Stopped using $finish",$time);
  $finish;
end

endmodule
// @ 0 ns Iteration 0           
 //@ 4 ns Iteration 1           
 //@ 8 ns Iteration 2           
 //@ 12 ns Iteration 3          
 //@ 16 ns Iteration 4          
                              //@ 20 ns Stopped using $finish 
