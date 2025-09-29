class example;
  bit[7:0] data;
  int id;
  task update(bit[7:0] m_data,int m_id);
    data = m_data;
    id = m_id;
    
  endtask
  function print;
    $display("data = %0d,id = %0d",data,id);
  endfunction
endclass
module eg;
  initial begin
  example h;
  h = new();
  h.update(5,9);
  h.print;
  end
endmodule
