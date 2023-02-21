`timescale 1ns / 1ps

module associative_method();

  int abc[string];
  string variable;
  string val1;

  initial begin
 
    $display("// associative array given below");

    abc = '{ "vadodara" : 10 , "ahmedabad" : 25 , "surendranagar" : 38 , "rajkot" : 55 ,
    "surat":48};
    $display("abc = %p",abc);
    $display("// abc.num() - gives number of elements inside array");
    $display("// output of abc.num()");
    $display("%0d",abc.num());
   ////////////////////////////
    $display("// abc.size() - returns size of array");
    $display("// output of abc.size()");
    $display("%0d",abc.size());
    //////////////////
    $display("abc.exists(index) - returns whether the particular index exists inside array or not");
    $display("output of abc.exist(vadodara)");
    if(abc.exists ("vadodara")) begin
      $display("index vadodara exists in array");
    end
    else begin
      $display("index vadodara not exists in array");
    end
    /////////////////////////////////////
    $display("abc.first(index) - returns the first index value in array");
    $display("output of abc.first(variable)");
    if(abc.first(variable)) begin
      $display("abc[%s]=%0d",variable,abc[variable]);
    end
    ///////////////////////////////////
    $display("abc.last(index) - returns the last index value in array");
    $display("output of abc.last(variable)");
    if(abc.last(variable)) begin
      $display("abc[%s]=%0d",variable,abc[variable]);
    end
    ////////////////////////////////
    $display("abc.next(index) - gives next index value which is greater than current index"); 
    $display("and it's corresponding value in array");
    $display("output after abc.next(val1)");
    if(abc.next(val1)) begin
      $display("abc[%s]=%0d",val1,abc[val1]);
    end
 ////////////////////////////////////
    $display("abc.delete(index) - deletes the index and it's corresponding value in array");
    $display("output after deleting surendranagar index in array");
    abc.delete("surendranagar");
    $display("%p",abc);
  end

endmodule 
