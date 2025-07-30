class parent;
  rand bit[15:0] value;
  constraint value_c {value >=30;}
endclass
class child extends parent;
  constraint value_c{value<30;}
endclass
module inheritance;
  parent p = new();
  child c = new();
  initial begin
    repeat(30)begin
    p.randomize();
      $display("value of parent constraint = %d",p.value);
    c.randomize();
      $display("value of child constraint = %d",c.value);      
    end
  end
endmodule
