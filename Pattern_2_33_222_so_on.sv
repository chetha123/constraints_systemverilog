//write a constraint to generate this pattern 2, 33, 222, 5555, 22222, 777777, 2222222, 99999999, 2222222222 and so on

class pattern;

  rand int pat[9];

  constraint c{pat[0]==2;
               pat[1]==33; 
               foreach(pat[i]){
                 if(i%2==0 && i>1)
                   pat[i]==pat[i-2]*100+22;
                 else if(i>2)
                   pat[i]==(pat[i-1]*10+2)+(pat[i-2]*100+i*11);

              }
              }
endclass

 

module tb;
  pattern p;

  initial begin
    p=new;
    p.randomize();
    $display("%0p",p.pat);


  end

endmodule
