`timescale 1ns / 1ps
module continue_sv;
  int array[5];
    initial 
        begin
foreach(array[i])
    begin
      if(i==2)begin
        $display("KANUUUU");
        continue;
      end
        else
          array[i]=i;
          $display("array[%0d]=%0d",i,array[i]);
        end
      end
      endmodule
