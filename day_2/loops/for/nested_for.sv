`timescale 1ns / 1ps
module nested_for;
  initial 
  begin
    for (int i=1;i<=2;i++)
    begin
            for(int j=1,k=0;j<=10;j++)
      begin
        k=i*j;
        $display("\t %0d X %0d = %0d",i,j,k);
      end
    end
     end

endmodule
