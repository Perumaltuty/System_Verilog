class rand_function;
  rand logic [2:0] a ; 
endclass 
rand_function raf;

module rand_var;
initial begin
  raf = new();
 
for (int i =0;i <= 10;i++)begin 
  raf.randomize ();
  $display("Iteration = %0d Random value of a = %0d",i, raf.a);
end
end 
endmodule 

 
