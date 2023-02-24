`timescale 1ns / 1ps
class rafra;
  string c;
  int d;
   function new();
    c="team";
    d=4;
  endfunction
    function void display();
    $display("\t c=%0s,d=%0d",c,d);
  endfunction
endclass
module class_assignment;
  rafra p1;
  rafra p2;
  initial begin
    p1=new();
    $display("");
    $display("contents of p1 before changes");
    p1.display();
    p2=p1;
    $display("contents of p2 before changes");
    p2.display();
    p2.c="BJT";
    p2.d=8;
    $display("contents of p1 after changes");
    p1.display();
    $display("contents of p2 after changes");
    p2.display();
    $display("");
  end
endmodule


//contents of p1 before changes
//	 c=team,d=4
//contents of p2 before changes
//	 c=team,d=4
//contents of p1 after changes
//	 c=BJT,d=8
//contents of p2 after changes
//	 c=BJT,d=8
	 
//	 both the copy have the same memory and shar the data
