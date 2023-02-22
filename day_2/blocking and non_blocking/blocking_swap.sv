module blocking_swap();
  int number_1=5;
  int number_2=2;
  int temp;
  initial
  begin
    $display("Inital : number_1=%0d & number_2=%0d ",number_1,number_2);
   
  end
  initial
  begin
    $display("swapping with Temporary variable : ");
    temp=number_1;
    number_1=number_2;
    number_2=temp;
    $display("number_1=%0d & number_2=%0d",number_1,number_2);
  end
  initial
  begin
    $display("swapping without Temporary variable : ");
    number_1=number_2;
    number_2=number_1;
    $display("number_1=%0d & number_2=%0d",number_1,number_2);
  end

endmodule
