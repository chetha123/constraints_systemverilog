//genrate  array having random values which should be power of 2 and it should print randomnly not like 2,4,8,16...
class power_of_two;
  rand bit [15:0] bit_pattern[];
  
  constraint size_arr_C { bit_pattern.size inside {[10:16]}; }  	     
  constraint pattern_C { 
    foreach(bit_pattern[i]) {      
      bit_pattern[i]==2**i;     
    }  }
      
   function print();
    bit_pattern.shuffle();    
    foreach(bit_pattern[i])
      $write(" %0d", bit_pattern[i]); 
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
