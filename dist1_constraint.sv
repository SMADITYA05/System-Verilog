class seq;
  rand bit[8:0] value;
  constraint value_c {value dist {[30:40]:/1,50:/1};}
endclass
module distkeyword;
  initial begin
    seq item = new();
    repeat(18)begin
      item.randomize();
      $display(":= operator,value =%d",item.value);
    end
  end
endmodule
