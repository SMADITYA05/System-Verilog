class random;
  rand bit[2:0] rrr[5];
  constraint value_c {unique{rrr};}
endclass
module randomi;
  random h1;
  initial begin
  h1 = new();    
  h1.randomize();
    foreach(h1.rrr[i])$display("value[%0d] = %d",i,h1.rrr[i]);
  end
endmodule
