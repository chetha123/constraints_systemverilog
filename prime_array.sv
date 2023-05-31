//prime number array between o to 200
class prime;
  rand int a[];
  int b[$];
  constraint c1{a.size()==200;}
  constraint c2{foreach(a[i])
    a[i]==prime(i);}
  
  function integer prime(int num);
    if(num<=1)
      return 2;
    
    for(int i=2;i<num;i++) begin
      if(num%i==0)
        return 2;
    end
    
    prime=num;
  endfunction
  
  function void post_randomize();
    b=a.unique;
  endfunction
endclass

module tb;
  prime p;
  initial begin
    p=new();
    p.randomize();
    $display("%p",p.b);
  end
  
endmodule
  
  
