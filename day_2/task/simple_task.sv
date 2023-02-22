`timescale 1ns / 1ps

module simple_task();
  
  int a=5,b=6,c;
  initial
  begin
     mul(a,b,c);
  $display("\t @ %0t ns , %0d X %0d = %0d",$time,a,b,c);
  end
  task mul(input int var1,var2,output int res);
    #2 res=var1*var2;
  endtask

endmodule
