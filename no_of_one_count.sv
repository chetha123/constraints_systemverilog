
//No of 1's=5, And they should be non consecutive
class c; 
 
  rand bit[15:0]a;
 
  constraint c1{
    $countones(a) == 5;
     foreach(a[i])
       if(i<15 && a[i]) 
         a[i+1] == 1'b0;
     }
endclass 

module tb;
  c obj;
  initial begin 
    obj=new(); 
    obj.randomize();
    $display("%0b",obj.a); 
  end 
endmodule
