module semaphore_ex1;
  semaphore sema=new(5);

//PROCESS 1
initial begin
$display("First initial block in time %0t",$time);
sema.get(3);
$display("Accesing three keys from semaphore in time %0t",$time);
#5;
sema.put(3);
$display("Returning three keys in semaphore in time %0t",$time);
end

//PROCESS 2
initial begin
$display("Second initial block in time %0t",$time);
sema.get(2);
$display("Accesing two keys from semaphore in time %0t",$time);
#10;
sema.put(2);
$display("Returning two keys in semaphore in time %0t",$time);
end

endmodule : semaphore_ex1
