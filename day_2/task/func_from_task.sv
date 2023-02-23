`timescale 1ns / 1ps
module func_from_task;
  initial
  begin
    $display("\t@ %0t ns, In the initial block",$time);
    $display("\tcalling task");
    task_sum;
    $display("\treturned to intial from function");
  end
  task task_sum;
    #1 $display( "\t@ %0t ns , I'm in task",$time);
    $display("\tcalling func inside a task");
    #1 void'(function_sum);
    $display("\treturned to task from function");
  endtask
  function function_sum;
    $display( "\t@ %0t ns I'm in function",$time); 
  endfunction
endmodule 


//@ 0 ns, In the initial block
//	calling task
//	@ 1000 ns , I'm in task
//	calling func inside a task
//	@ 2000 ns I'm in function
//	returned to task from function
//	returned to intial from function
