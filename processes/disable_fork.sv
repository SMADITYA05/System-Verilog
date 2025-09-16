module forkjoin_example;
  
initial begin
  
fork
  
   begin
     $display("a started at %0t",$time);
     #10;
     $display("a done at %0t",$time);
   end
  
   begin
     $display("b started at %0t",$time);
     #15;
     $display("b done at %0t",$time);
   end
  
   begin
     $display("c started at %0t",$time);
     #13;
     $display("c done at %0t",$time);
   end
  
join_any
  disable fork;
  $display("forkjoin done at %0t",$time);
end
  
endmodule
