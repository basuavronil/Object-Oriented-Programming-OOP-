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

    hc.cc = 30;
    hc.cd = 40;
    $display (" a = %0d b = %0d ", hp.pa, hp.pb);  // a = 1 b = 2 
    $display (" a = %0d b = %0d c = %0d d = %0d", hc.pa, hc.pb, hc.cc, hc.cd); //  a = 10 b = 20 c = 30 d = 40

//    ha.displaycc();  show error as in inheritance we cannot handle child property with parent handle class
  end
endmodule 
