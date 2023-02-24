`timescale 1ns / 1ps
class paren;
  int a,b;
  int c;
  int d = 5;
  function int sum(int val1,val2);
    c = val1 + val2;
    return c;
  endfunction
  function void display();
    $display("sum = %0d",c);
    $display("1.d = %0d",d);
  endfunction
endclass
class child extends paren;
  function void disp();
    $display("2.d = %0d",d);
  endfunction

endclass
module pub();
  paren p;
  child c1;
  int e;
  initial begin
    p = new();
    c1 = new();
    e = p.sum(5,10);
    p.display();
    c1.d = 10;
    c1.disp();
  end
endmodule

`timescale 1ns / 1ps
class paren;
  int a,b;
  int c;
  int d = 5;
  function int sum(int val1,val2);
    c = val1 + val2;
    return c;
  endfunction
  function void display();
    $display("sum = %0d",c);
    $display("1.d = %0d",d);
  endfunction
endclass
class child extends paren;
  function void disp();
    $display("2.d = %0d",d);
  endfunction

endclass
module pub();
  paren p;
  child c1;
  int e;
  initial begin
    p = new();
    c1 = new();
    e = p.sum(5,10);
    p.display();
    c1.d = 10;
    c1.disp();
  end
endmodule

//sum = 15
//1.d = 5
//2.d = 10
//public can be accessed anywhere from the program
