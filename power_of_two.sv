//genrate  array having random values which should be power of 2 and it should print randomnly not like 2,4,8,16...
class power_of_two;
  rand bit [15:0] pow[];
  
  constraint size_arr_C { pow.size inside {[10:16]}; }  	     
  constraint pattern_C { 
    foreach(pow[i]) {      
      pow[i]==2**i;     
    }  }
      
   function print();
    pow.shuffle();    
    foreach(pow[i])
      $write(" %0d", pow[i]); 
      $write("\n");  
    endfunction
endclass 
    
 module test;
  power_of_two o = new();  
   initial begin
    o.randomize();    
    o.print();
  end
endmodule
