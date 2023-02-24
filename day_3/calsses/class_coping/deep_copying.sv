`timescale 1ns / 1ps
class branches;
  string c;
  int d;
  function new();
    c="Banglore";
    d=1;
  endfunction
    function void disp();
    $display("\t c=%0d,\t d=%0d",c,d);
  endfunction
  function void deep(branches copy);//copy
    this.c=copy.c;
    this.d=copy.d;
  endfunction
endclass
module class_deep_copy;
  branches p1;
  branches p2;
  initial begin:BEGIN_I
    p1=new();
    p2=new();
    p2.deep(p1);//deep copy
    $display("");
    $display("contents of branch p1 before changes");
    p1.disp();
    $display("contents of branch p2 before changes");
    p2.disp();
    p1.c="Manipal";
    p2.c="Hyderabad";
    $display("contents of branches p1 after changes");
    p1.disp();
    $display("contents of branches p2 after changes");
    p2.disp(); 
    $display("");
  end
endmodule



//contents of branch p1 before changes
//	 c=Banglored,	 d=1
//contents of branch p2 before changes
//	 c=Banglored,	 d=1
//contents of branches p1 after changes
//	 c=Manipald,	 d=1
//contents of branches p2 after changes
//	 c=Hyderabadd,	 d=1
//	 Seprate memory is allocated for each instance
