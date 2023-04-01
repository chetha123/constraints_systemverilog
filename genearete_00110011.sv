// to generate 00110011... with length 10
class rand_bit_pattern;
  
rand bit bit_pattern[];
  constraint size_arr_C { bit_pattern.size inside {[10:11]}; }
  constraint pattern_C {     foreach(bit_pattern[idx]) {

    if(idx%4 == 0  ||(idx%4==1)) bit_pattern[idx]==0;      
    if(idx%4 == 2  ||(idx%4==3)) bit_pattern[idx]==1;
    }  }
  
   function print();
     foreach(bit_pattern[i])
      $write("%0b", bit_pattern[i]); 
    $write("\n");  endfunction
endclass
 
module test;
  rand_bit_pattern o = new();  
   initial begin
    o.randomize();    
    o.print();
  end
endmodule
