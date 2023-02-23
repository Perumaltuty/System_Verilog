`timescale 1ns / 1ps
module pass_by_positional;
 int result;
  initial
  begin
    $display("\t ----output for function passing by posiitonal arguements-----");
    $display("\tcalling the function");
    result=sum(.var1(5),.var2(6));
    $display("\treturned from function and");
    $display("\tstored the value of sum in result");
    $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
  end
  function int sum(input int var1,var2);
    $display("\n\tentered into function");
    return var1+var2;
  endfunction 
endmodule 



// ----output for function passing by posiitonal arguements-----
//	calling the function

//	entered into function
//	returned from function and
//	stored the value of sum in result

//	@ 0 ns, value of sum is 11
