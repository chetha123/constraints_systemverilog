//Constraint to generate pattern 122112211221122112211

class pattern_122112211221122112211;
  rand int a[];
  
  constraint C1 { a.size == 17;
              
                 
                 foreach(a[i])
                 {
                   if(i % 4 == 0 || i % 4 == 3) a[i] == 1;
                   if(i % 4 == 1 || i % 4 == 2) a[i] == 2;
                 }
                }
endclass
                   
module C;
  pattern_122112211221122112211 A_h = new();
  initial begin
  A_h.randomize();
  $display("The array is = %p", A_h.a);
  end
endmodule
