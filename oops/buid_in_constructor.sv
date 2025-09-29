class example;
  bit[7:0] data;
  function new(bit[7:0] d);
    data = d;
  endfunction
    
endclass

module eg;
  initial begin
    example h=new(10);
  $display("the value of data = %0d", h.data);
  end
endmodule
