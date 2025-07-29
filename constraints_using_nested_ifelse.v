class ifelse_constraints;
  rand bit[7:0] value;
  rand enum {high,mid,low} switch;
  constraint value_c { if(switch == high) value >=50; else if(switch==mid) value inside{[50:100]} ; else value >150;}
endclass
module ifelse;
  ifelse_constraints item;
  initial begin
    item = new();
    repeat(218)begin
      item.randomize();
      $display("value = %d,switch = %s",item.value,item.switch.name());
    end
    end
endmodule
