`define rangestart 10
`define rangeend 20
class constraints #(parameter p1=10,p2=20);
   rand bit [7:0] value9,value8,value1,value2,value3,value4,value5,value6,value7;
  constraint value1_c { value1 inside{[10:20]};}
   constraint value2_c { value2 inside{11,12,20};}
   constraint value3_c { value3 inside{10,12,[15:18],20};}
  constraint value4_c { value4 inside{[`rangestart:`rangeend]};}
  constraint value5_c { value5 inside{[value1:value8]};}
  constraint value6_c { value6 inside{[p1:p2]};}
  constraint value7_c {! (value7 inside{[10:20]});}
  constraint value8_c { value8 inside{[21:30]};}
endclass
module con_example;
  constraints item;
  initial begin
  item = new();
    repeat(3)begin
      item.randomize();
$display("value9=%d,value8=%d,value1=%d,value2=%d,value3=%d,value4=%d,value5=%d,value6=%d,value7=%d",item.value9,item.value8,item.value1,item.value2,item.value3,item.value4,item.value5,item.value6,item.value7);
    end
  end
endmodule
  

   
