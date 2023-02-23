`timescale 1ns / 1ps
class Mirafra;
  static int  team ;
  function new();
    team ++;
  endfunction:new
  static function void disp();
    $display("\t team=%0d",team);
  endfunction:disp
endclass
module static_method;
  Mirafra m[3];
  initial begin
    $display("");
    foreach(m[i])begin
      m[i]=new;
    end
    $display("\t contents of team");
    m[2].disp();
    $display("");
  end
endmodule


// contents of team
//	 team=3
