`timescale 1ns / 1ps
class home;  
  bit light;  
  int fan;  
  string switch;
  task open_electricity();  
    switch = "ON";
    $display("\t switch is %0s so electricity is open",switch);  
  endtask  
endclass
module check_electricity;  
  initial begin  
    home h1;     
    h1=new();    
    h1.light=1;
    h1.fan=1;
    h1.open_electricity;  
    $display("\t light is %0d(ON) and fan is also %0d(ON)",h1.light,h1.fan);
   end

endmodule


//switch is ON so electricity is open
//	 light is 1(ON) and fan is also 1(ON)
