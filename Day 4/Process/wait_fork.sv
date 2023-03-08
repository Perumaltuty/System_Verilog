module wait_fork;
  initial begin
    $display("--------------------------------------------");
    fork
      //Process-1
      begin
        $display($time,"Process-1 Started");
        #5;
        $display($time,"Process-1 Finished");
      end

      //Process-2
      begin
        $display($time,"Process-2 Started");
        #20;
        $display($time,"Process-2 Finished");
      end
    join_any
     wait fork;     
    $display("---------------------------------------------");
    $finish;
  end
endmodule
