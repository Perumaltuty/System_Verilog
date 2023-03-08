module ran_fun;
integer a; 
integer d;
logic [2:0] b;
bit [5:0] e;
byte c;  
initial begin 
a = $random();
b = $urandom();
c = $urandom_range(4,2); 
d = $random(23);  
e = $urandom(4); 
$display ("Random Value of a  =  %0d",a);
$display ("--------------------------------------------");

$display ("Random Value of b = %0d",b);
$display ("--------------------------------------------");

$display ("Random value of c = %0d",c);
$display ("--------------------------------------------");

$display ("Random value of d = %0d",d );
$display ("--------------------------------------------");

$display ("Random value of e = %0d", e);
$display ("--------------------------------------------");                                     
end 
                                     
endmodule 



