class random;
  rand bit [5:0] v1,v2,v3,v4;
  constraint value_c {v1<v2;
                      v3>v2;
                      v4 == v3+4;}
endclass
module n;
  random h;
  initial begin
    h = new();
    h.randomize();
    repeat(12)begin
      $display("v1=%d,v2=%d,v3=%d,v4=%d",h.v1,h.v2,h.v3,h.v4);
    end
  end
endmodule
