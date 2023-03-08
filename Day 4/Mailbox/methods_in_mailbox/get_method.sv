//TRANSMITTER

class A;
 int a;
int i;
mailbox m;
function new(mailbox m1);
this.m=m1;
endfunction
task trans_data();
for(i=0;i<3;i++)
begin
a++;
m.put(a);
$display("Transmitter: Value of a :",a);
end
$display("put successful");
endtask
endclass :A

//RECEIVER 

class B;
int a;
int i;
mailbox m;
function new(mailbox m2);
this.m=m2;
endfunction
task receive_data();
for (i=0;i<3;i++)
begin
m.get(a);
$display("Receiver : Value of a:",a);
end 
$display("get successful");
endtask
endclass :B

module tb();
A a;
B b;
mailbox main=new();

initial 
begin
a=new(main);
b=new(main);
repeat(2)
begin
a.trans_data();
  $display(" --------------------- ");
b.receive_data();
end 
end
endmodule :tb

