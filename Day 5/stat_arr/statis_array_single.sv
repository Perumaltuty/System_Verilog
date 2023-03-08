class static_array;
  randc byte  a[7];
endclass 

module stat_array;
static_array stat_arr;
initial begin 
stat_arr = new();
void '(stat_arr.randomize ());
$display ("Output =  %0p ",stat_arr.a);
end 
endmodule 

