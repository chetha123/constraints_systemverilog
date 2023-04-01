
//Constraint to generate first half of array elements with even numbers and 2nd half with odd numbers

class array_halfeven;
  rand  bit [7:0] arr[];
  constraint arr_size {arr.size() inside {[20:30]};}
  constraint arr_sort { foreach(arr[i])
                        if(i<(arr.size()/2))
                          arr[i]%2==0; 
                       else 
                         arr[i]%2==1;
                      } 
  function void post_randomize();
    $display("%0d",arr.size());
    foreach(arr[i]) 
      $write("%0d ",arr[i]);
  endfunction
endclass 

module tb;
  array_halfeven obj;
  
  initial begin 
    obj=new();
    obj.randomize(); 
  end 
endmodule
