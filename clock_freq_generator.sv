// Code your testbench here
// or browse Examples
module clokck_freq_gen();
  reg clock;
  parameter DUTY_CYCLE=70;
  parameter TIME_PERIOD=10;
  parameter ACTIVE_TIME_WIDTH=(DUTY_CYCLE*TIME_PERIOD)/100;
  parameter NON_ACTIVE_TIME_WIDTH=TIME_PERIOD-ACTIVE_TIME_WIDTH;
  
  initial 
    begin 
	    
        #1000; 
		
        $finish; 
    end 
  
  always begin
  
  clock=1'b0;
  #(NON_ACTIVE_TIME_WIDTH);
    
  clock=1'b1;
  # (ACTIVE_TIME_WIDTH);
  
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  
endmodule
