module semaphore_ex2;
  semaphore sema=new(6);

//PROCESS 1
initial begin
$display("First initial block in time %0t",$time);
sema.get(4);
$display("Accesing five keys from semaphore in time %0t",$time);
#5;
sema.put(2);
$display("Returning three keys in semaphore in time %0t",$time);
#20;
$display("Still using remaining 2 keys %0t",$time);
end

//PROCESS 2
initial begin
$display("Second initial block in time %0t",$time);
sema.get(5);
$display("Accesing five keys from semaphore in time %0t",$time);
#10;
sema.put(5);
$display("Returning five keys in semaphore in time %0t",$time);
end

endmodule : semaphore_ex2
