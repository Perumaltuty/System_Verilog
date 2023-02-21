`timescale 1ns / 1ps
module logic_data_type;
logic [2:0]logic_data_type;
initial begin
$display("\nDefault value =%b",logic_data_type);
logic_data_type=3'b101;
$display("\nValue of logic =%b",logic_data_type);
end
endmodule
