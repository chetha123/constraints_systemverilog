//write a constraint to randomnly generate string
class temp_c;
 
    rand byte unsigned temp[];
 
    constraint str_len { temp.size() == 4; } // Length of the string
 
    constraint temp_str_ascii { foreach(temp[i]) temp[i] inside {[65:90], [97:122]}; } //To restrict between 'A-Z' and 'a-z'
 
    function string get_str();
        string str;
        foreach(temp[i])  
            str = {str, string'(temp[i])};
        return str;
    endfunction
endclass
 
module top;
 
   temp_c obj;
 
   initial begin
       obj = new;
       obj.randomize();
       $display("\nString is :%0s", obj.get_str());
   end
endmodule
