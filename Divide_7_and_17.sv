//constraint to generate number which is divisble by both 7 and 17
class div_7_17;
  rand bit [15:0] div;
  constraint constr_7_17 { div % (7*17) == 0; }
endclass

module div_cons;
    div_7_17 divisible;
    initial begin
      divisible = new();
      for (int i = 0; i <5; i++) begin
        divisible.randomize();
        $display("Divisible by 7 and 17 : %0d", divisible.div);
      end
    end
endmodule
