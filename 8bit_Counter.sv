//8 bit up counter
class counter_8;
  bit [7:0]cnt;
  bit clk;
  bit reset;
endclass 

module tb;
  counter_8 obj=new();
   always #5 obj.clk=~obj.clk; 
  
  initial begin 
    obj.reset=1'b1;
    #10 obj.reset=1'b0;
    #200 $finish();
  end
  
  always @(posedge obj.clk)
    begin
      if(obj.reset) begin
        obj.cnt=8'b0;
        $display("%0d",obj.cnt);
      end
      else begin
        obj.cnt=obj.cnt+1'b1;
        $display("%0d",obj.cnt);
      end 
    end 
endmodule
