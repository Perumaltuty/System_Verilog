//TRANSMITTER
class A;
  
  int a;
  int i;
  mailbox  m;

  function new(mailbox m1);

    this.m = m1;

  endfunction

  task check();

      if(m == null) begin
        $display("Mailbox not created");
      end

      else
        $display("Mailbox created");

        for(i=0;i<3;i++) begin
          a++;
          m.put(a);
          $display("Transmitter : Value of a = %0d",a);
        end

  endtask

endclass:A


module  tb();

  A a;
  mailbox main = new();
  initial begin
    a= new(main);
    $display("------------------------");
    a.check();
  end

  endmodule:tb


