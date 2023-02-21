`timescale 1ns / 1ps
module associative_array ();

  int abc[*]; 
  string pqr[string];

  initial begin
   
    $display("associative array example");
 

    abc = '{ 1 : 0 , 2 : 2 , 3 : 6};
    pqr = '{ "bag" : "apple" , "vegetables" : "carrot" , "season" : "rain"};

    $display(" this int type associative arrays contains int type index");
    $display("abc = %p",abc);
    
    $display(" this string type associative arrays contains string type index");
    $display("pqr = %p",pqr);
   
  end

endmodule 
