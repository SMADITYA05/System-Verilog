class ifelse_constraints;
  rand bit[7:0] value;
  rand enum {high,mid,low} switch;
  constraint value_c { value == ((switch == high) ? 50:((switch==mid) ?  100 : 150 ) ) ;}
endclass
module ifelse;
  ifelse_constraints item;
  initial begin
    item = new();
    repeat(218)begin
      
      if(!(item.randomize()))
        $fatal("oops");
      else
      $display("value = %d,switch = %s",item.value,item.switch.name());
    end
    end
endmodule
