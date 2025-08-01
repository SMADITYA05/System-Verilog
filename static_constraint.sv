class random;
  rand bit[7:0] value;
  static constraint value_c{ value inside{1};}
endclass
module randomi;
  random h1 = new();
  random h2 = new();
  initial begin
    h1.randomize();
    h2.randomize();
    $display("valueh1 = %d,valueh2 = %d",h1.value,h2.value);
    h2.constraint_mode(0);
    h1.randomize();
    h2.randomize();
    $display("valueh1 = %d,valueh2 = %d",h1.value,h2.value);
  end
endmodule
