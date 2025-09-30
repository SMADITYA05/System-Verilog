class transaction;
  int id;
  static int s_id;
endclass

module static_properties;
  transaction tr[9];
  initial begin
  foreach(tr[i])begin
    tr[i] = new();
    transaction::s_id++;
    tr[i].id++;
    $display("static s_id[%0d]= %0d , id[%0d] = %0d ",i,transaction::s_id,i,tr[i].id);
  end
  end
endmodule
