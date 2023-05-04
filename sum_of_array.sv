// to get sum of elements in array is equal to 50 or userdefined values check/modify at 1nd 3rd constraint
 class sum_array;
   rand int unsigned arr[];
  constraint  c1_c { foreach (arr[u]) arr[u] < 50 ; } //to put individual value less than 50 to get more than one value in array
   
  constraint arr_c { arr.size() == 5;}
                      /*foreach(arr[i]) { (arr[i]%8) == 0; }
                    }*/
  constraint sum_c { arr.sum() == 50 ; }
 
endclass

module tb; 
   sum_array c1;
  
 initial
    begin 
      c1 = new;
      void'(c1.randomize());
      $display("ANSWER: arr:%p",c1.arr);
    end
 
endmodule
