`timescale 1ns / 1ps
module string_operation;

// Declaring 2 strings,str and str1

string str1 ="Palm_tree";
string str2 ="Minion";

initial begin
$display("\nstr1=%s",str1);
  $display("str2=%s",str2); 

//checking equality operator
$display("\n// str1 == str2, Equality operator");
$display("// Output of equality operator");
if(str1==str2)
$display("string1 and string2 are equal");
else
$display("string1 and string2 are not equal");

//checking inequality operator
$display("\n// str1 != str2, Inequality operator");
$display("// Output of inequality operator");
if(str1!= str2)
$display("string1 and string2 are not equal");
else
$display("string1 and string2 are equal");

//checking comparision operator
$display("\n// Comparision operator ( > => < <= ), compares ascii value");
$display("// Output of comparision operator");
if(str1 < str2)
$display("String1 < String2 ");
if(str1 <= str2)
$display("String1 <= String2 ");
if(str1 > str2)
$display("String1 > String2");
if(str1 >= str2)
$display("String1 >= String2");

//Concatenation operator
$display("\n// Concatenation of str1 and str2,{str1,str2}");
 $display("// Output of concatenation operator");
$display("%s", {str1,str2});

//Replication operator
$display("\n// Replication of str1,{2{str1}}");
 $display("// Output of replication operator");
 $display("%s",{2{str1}});

//Displaying index letter of a string
$display("\n// Displaying index letter of a string,str1[i]");
$display("// Output");
for(int i =0 ;i <9 ; i++)
$display("%s ",str1[i]);


end

endmodule
