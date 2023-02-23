`timescale 1ns / 1ps
module func_return_void;

  initial
  begin
    display("\t ----output for function void return type-----");
    display("\t passing string to function for displaying");
  end
  function void display(string str);
    $display("%s",str);
  endfunction 
endmodule 
// ----output for function void return type-----
//    passing string to function for displaying
//    reurns nothing 
