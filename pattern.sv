//generate 0102030405
class bit_pattern;
  rand int bit_pattern[];
  constraint f{ bit_pattern.size()==10;
				foreach(bit_pattern[i])
                  if(i%2==0)
					bit_pattern[i]==0;
				else
                  bit_pattern[i]==((i+1)/2);
  }
endclass


module tb;
bit_pattern f;
initial begin
f=new();
  f.randomize();
  //repeat(10) begin
  foreach(f.bit_pattern[i]) begin
  
    $write("%d",f.bit_pattern[i]);
  end
end
endmodule
