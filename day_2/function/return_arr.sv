`timescale 1ns / 1ps
module func_return_arr;
  int array[5];
  initial
  begin
    $display("\t ----output for function returning an array-----");
    $display("\t calling the function");
    void'(fun_arr(array));
    $display("\treturned from function");
    $display("\n\t@ %0t ns, Array elements = %0p",$time,array);
  end
  function automatic int fun_arr(ref int arr[5]);
    $display("\tEntered the function");
    foreach(arr[i])begin
      arr[i]=i+1;
    end
      $display("\t values assigned to array elements starts from 1");
      return arr[5];
    endfunction
endmodule


//         ----output for function returning an array-----
//	 calling the function
//	Entered the function
//	 values assigned to array elements starts from 1
//	returned from function

//	@ 0 ns, Array elements = '{1,2,3,4,5}
