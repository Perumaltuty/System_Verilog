`timescale 1ns / 1ps
class over_riding;
  string place;
  int members;
  int teams;
  function new();
    place="manipal";
    members=13;
  endfunction
  function void display();
    $display("place = %s,\t members= %0d",place,members);
  endfunction
endclass
class Teams extends over_riding;
  string Teams;
  int members;
  function new();
    Teams="over_riding-teams";
    members=25;
  endfunction
  function void display();
    $display("Teams=%0d,\t mem=%0d",Teams,members);
  endfunction
endclass
class bjt extends over_riding;
  string Team;
  int members;
  string place;
  function new();
    Team ="Team3";
    members=4;
  endfunction
  function void display();
    $display("Team=%0d,\t members=%0d,\t place=%s",Team,members,place);
  endfunction
endclass
module class_over_riding;
  bjt c;
  initial begin
    c=new();
    $display("contents before over-riding");
    c.display();
    c.place = "over_riding";
    c.Team="BJT";
    c.members = 8;
    c.place="Manipal";
    $display("contents after over-riding");
    c.display();
  end
endmodule


//contents before over-riding
//Team=Team3d,	 members=4,	 place=
//contents after over-riding
//Team=BJTd,	 members=8,	 place=Manipal
