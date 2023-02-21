
module array_order;

int array[8] = {2,7,1,9,9,7,0,6};

initial
begin
  $display("\n array[8]={2,7,1,9,9,7,0,6}");

  $display("\n OUTPUT :");

  array.reverse();
  $display("\n // reverse()-Return the reverse order of array element: \n\t%p", array);

  array.sort();
  $display("\n // sort()-Return the array element in the ascending order: \n\t%p", array);

  array.rsort();
  $display("\n // rsort()-Return the array element in the descending order: \n\t%p", array);

   array.shuffle();
    $display( "\n // Shuffle()-shuffle the element such that the indicies place element should be different for each shuffle: \n\t%p", array);
 
  $display("");
end

endmodule 
