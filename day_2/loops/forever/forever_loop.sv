`timescale 1ns / 1ps
module forever_loop;
  int a; 
  initial 
  begin 
    forever
    begin
      $display("\t @ %0d ns Iteration %0d",$time,a);
      a++;
      #4;
      if(a>8)
        break;

    end
    $display("\n\t@ %0d ns Stopped using break",$time);
  end

endmodule
//@ 0 ns Iteration 0
	
// @ 4 ns Iteration 1
	
// @ 8 ns Iteration 2
	
// @ 12 ns Iteration 3
	
// @ 16 ns Iteration 4
	
// @ 20 ns Iteration 5
	
// @ 24 ns Iteration 6
	
// @ 28 ns Iteration 7
	
// @ 32 ns Iteration 8

	
//@ 36 ns Stopped using break
