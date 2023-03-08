module r_case;
initial begin
 for(int i =0; i<6;i++)
 begin
   randcase
    0:$display("\t \n output of randcase 0");
    1:$display("\t \n output of randcase 1");
    2:$display("\t \n output of randcase 2");
    3:$display("\t \n output of randcase 3");
  endcase
end
end
endmodule
