`timescale 1ns / 1ps
class Mirfra;
  byte teams;
  static byte BJT;
  function new();
    BJT++;
    teams=BJT;
  endfunction
  function void disp();
    $display("teams=%0d",teams);
  endfunction
endclass
module static_properties;
  Mirfra m[4];
  initial begin
    foreach(m[i]) begin
      m[i] = new();
      $display("contents of teams");
      m[i].disp();
    end
  end
  endmodule
  
  
//  contents of teams
//  teams=1
//  contents of teams
//  teams=2
//  contents of teams
//  teams=3
//  contents of teams
//  teams=4
