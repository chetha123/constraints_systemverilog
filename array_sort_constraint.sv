//Constraint to sort (ascending to descending) array elements
class array_sort;
rand  int arr[20];
  constraint arr_sort { foreach(arr[i])
                        if(i<19)
                          arr[i+1]>arr[i]; 
                       foreach(arr[i])
                         a[i] inside {[1;100]}; } 
  function void post_randomize();
    
    $write("%0p ",arr);
  endfunction
endclass 

module tb;
  array_sort obj;
  
  initial begin 
    obj=new();
    obj.randomize(); 
  end 
endmodule
