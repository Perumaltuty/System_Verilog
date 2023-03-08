//TRANSMITTER
class A;
  int a;
  int i;
  mailbox m;     
  function new(mailbox m1);
    this.m = m1;
  endfunction                 
  task tra_data();
    for(i =0;i<4;i++) begin
      a++;
      m.put(a);
      $display("Transmitter: value of a = %0d",a);
    end
    $display("put successful");                                                               
  endtask                                                         
endclass:A

//RECEIVER
class B;
  int a;
  int i;
  mailbox m;     
  function new(mailbox m2);
    this.m = m2;
  endfunction           
  task rec_data();
    repeat(5) begin
     if( m.try_get(a))
      $display("Receiver: value of a = %0d",a);
     else
      $display("Failed while trying to get the value as mailbox is empty");
    end
    $display("get successful");
  endtask
endclass:B

module tb();  
  A a1;
  B b1;
  mailbox main = new(4);        
  initial begin:BEGIN_MAIN
    a1 = new(main);
    b1 = new(main);
    repeat(2)
    begin
      a1.tra_data();
      $display("  ------------------------  ");
      b1.rec_data();
    end
  end
endmodule:tb
