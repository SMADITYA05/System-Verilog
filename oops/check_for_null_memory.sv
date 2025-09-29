class transaction;
  bit[7:0] data;
  int id;
endclass

module unallocated;
  initial begin
  transaction tr1;
  transaction tr2;
  tr2 = new();
  if(tr1 != null)begin
     tr1.data = 2'b10;
     tr1.id = 2'b11;
    $display("the data = %0d,the id =%0d",tr1.data,tr1.id);
  end else begin
    $display("no object tr1");
  end
    if(tr2 != null)begin
       tr2.data = 2'b00;
       tr2.id = 2'b01;
      $display("the data = %0d,the id =%0d",tr2.data,tr2.id);
    end
    else begin
      $display("no object tr2");
    end
  end
endmodule
  
