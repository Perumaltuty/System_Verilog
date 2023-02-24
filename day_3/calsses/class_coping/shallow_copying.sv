`timescale 1ns / 1ps
class Mirafra;
  string c;
  int d;
  function new();
    c = "Teams";
    d = 8;
  endfunction
  function void display();
    $display("\t c=%0s,\t d=%0d",c,d);
  endfunction
endclass
module class_shallow_copy;
  Mirafra p1;
  Mirafra p2;
  initial begin
    p1 =new();
    $display("");
    $display("contents of p1 befor chnages");
    p1.display();
    p2 =new p1;
    $display("contents of p2 before changes");
    p2.display();
    p2.c="place";
    $display("contents of p1 after changes");
    p1.display();
    $display("contents of p2 after changes");
    p2.display();
    $display("");
  end
endmodule


//contents of p1 befor chnages
//	 c=Teams,	 d=8
//contents of p2 before changes
//	 c=Teams,	 d=8
//contents of p1 after changes
//	 c=Teams,	 d=8
//contents of p2 after changes
//	 c=place,	 d=8
//seprate memory are created but the method are shared by each no separate memeory is created for the method as the memebers
