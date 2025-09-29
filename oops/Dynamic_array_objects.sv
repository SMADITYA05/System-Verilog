class transaction;
  bit[7:0] data;
  int id;
endclass

module array_of_objects;
  initial begin
  transaction tr[];
     tr = new[5];
  foreach(tr[i]) begin
    tr[i] = new();
    tr[i].data = i*i;
    tr[i].id =i+1;
    $display("tr[%0d].data = %0d,tr[%0d].id = %0d",i,tr[i].data,i,tr[i].id);
  end
  end
endmodule
