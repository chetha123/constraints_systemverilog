//generate 1122334455 pattern 
class pattern_1122334455;
  rand int arr[10];
  
  constraint c {arr[0]==1;
    foreach(arr[i])
      if(i%2!=0 &&i!=0)
        arr[i]==arr[i-1];
                
      else if(i!=0)  
        arr[i]==arr[i-1]+1;
        
        	
		      
      }  
endclass

module tb;  
pattern_1122334455 p; 
initial begin
  p=new();
  p.randomize();
  foreach(p.arr[i])
    $write("%d",p.arr[i]);
  end
endmodule
