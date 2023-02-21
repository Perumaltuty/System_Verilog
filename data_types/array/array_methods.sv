module array_max;
int array[8] = {1,9,9,7,2,7,0,6};

int result[$];


initial
begin

  $display("\narray[8] = {1,9,9,7,2,7,0,6}");

  $display("\n OUTPUT: ");

  result = array.min();
  $display("\n  minimum value from the array: \n\t%p ", result);

  result = array.max();
  $display("\n maximum value from the array: \n\t%p ", result);

  result = array.unique();
  $display("\n unique value from the array repeated values return once: \n\t%p ", result); 


  result = array.unique_index();
  $display("\n // unique_index()-Return the indices of all value having unique values: \n\t%p", result);
  $display("");
end
endmodule

