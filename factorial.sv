//generate an array of factorial numbers
class factorial;
  rand int fact[];
  constraint f{ fact.size() inside {[6:8]};
				foreach(fact[i])
                  if(i==0)
                    fact[0]==1;
  				  else
                    fact[i]==(fact[i-1]*(i+1));}
endclass


module tb;
factorial f;
initial begin
f=new();
  f.randomize();
$display("%p",f.fact);
end
endmodule
