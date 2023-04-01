//  genrate 101010.. pattern
class rand_bit_pattern;
  
  rand bit bit_pattern[];
  constraint size_arr_C { bit_pattern.size inside {[10:11]}; }
  constraint pattern_C {     foreach(bit_pattern[i]) {
      if(i%2==0) 
        bit_pattern[i]==1;      
      else
        bit_pattern[i]==0;    }
  } 
  
function print(); 
    foreach(bit_pattern[i])    
     $write("%0b", bit_pattern[i]);
     $write("\n");
endfunction
endclass
  
module test;  
  rand_bit_pattern o = new();
  initial begin    
    o.randomize();
    o.print();  
  end
endmodule

