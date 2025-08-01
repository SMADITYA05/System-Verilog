class random;
  rand bit[7:0] value;
  constraint value_c{ value >100;}
endclass
module randomi;
  random h1 = new();
  initial begin
    h1.randomize();
    $display("valueh1 = %d",h1.value);
    h1.randomize() with {value <150;value>50;};
    $display("valueh1 = %d",h1.value);
  end
endmodule
