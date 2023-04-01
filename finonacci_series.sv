// generate fibonacci series 

class fib;
  rand int  fib_arr[]; 
  
  constraint size_arr_C { fib_arr.size inside {[20:30]}; } 
  constraint pattern_C { foreach(fib_arr[i]) { 
      if(i==0)        
          fib_arr[i]==0;
      else if(i==1)         
          fib_arr[i]==1;
       else            
          fib_arr[i] ==fib_arr[i-1]+fib_arr[i-2];
         }  }
      
function print();      
    foreach(fib_arr[i])
      $write(" %0d", fib_arr[i]);     
      $write("\n");  
    endfunction
endclass
                        
 module test;  
   fib o = new();  
   initial begin    
    o.randomize();    
    o.print();  
end
endmodule
