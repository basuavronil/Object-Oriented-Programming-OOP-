// Code your testbench here
// or browse Examples
class cp;
  int pa;
  int pb;
  function void displaycp();
    $display ( " pa = %0d pb = %0d", pa, pb);
  endfunction
endclass
class cc extends cp;
  int cc;
  int cd;
  function void displaycc();
    $display ( " pa = %0d pb = %0d cc = %0d  cd = %0d", pa, pb, cc ,dd);
  endfunction
endclass
module tb;
  cp hp;
  cc hc;
  initial begin
    hp = new();
    hc = new();
    hp.pa = 1;
    hp.pb = 2;
    hp.displaycp();
    
    hc.pa = 10;
    hc.pb = 20;
    hp.displaycp():
    hc.displaycp();
    
  end
endmodule 
