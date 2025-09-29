class transaction;
  bit[7:0] data;
  int id;
endclass

module unallocated;
  initial begin
  transaction tr1;
  transaction tr2;
  tr2 = new();
  tr1 = tr2;
    
    tr2.data = 2'b00;
    tr2.id = 2'b01;
     $display("the data = %0d,the id =%0d",tr1.data,tr1.id);
    
    tr1.data = 2'b10;
    tr1.id = 2'b11;
      $display("the data = %0d,the id =%0d",tr2.data,tr2.id);
  
  end
endmodule
