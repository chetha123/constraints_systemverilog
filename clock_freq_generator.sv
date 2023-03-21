module clokck_freq_gen();
  bit clock;
  parameter DUTY_CYCLE=50;
  parameter TIME_PERIOD=10;
  parameter ACTIVE_TIME_WIDTH=(DUTY_CYCLE*TIME_PERIOD)/100;
  parameter NON_ACTIVE_TIME_WIDTH=TIME_PERIOD-ACTIVE_TIME_WIDTH;
  
  always clock=1'b1;
  #ACTIVE_TIME_WIDTH ;
  always clock=1'b0;
  #NON_ACTIVE_TIME_WIDTH;
  
endmodule
