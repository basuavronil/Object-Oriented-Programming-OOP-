class p;
  	int a;
    int b;
  function void display_p();
    $display ("a = %0d b = %0d ", a, b);
  endfunction
endclass

class c1 extends p;
     int c;
  int d;
  function void display_c1();
    $display("a = %0d b = %0d  c = %0d  d= %0d", a, b, c, d);
  endfunction
endclass
class c2 extends c1;
  int e;
  int f;
  function void display_c2();
    $display("a = %0d b = %0d  c = %0d  d = %0d e = %0d f = %0d", a, b, c, d, e, f);
  endfunction
endclass
module tb;
 p p;
  c1 c1;
  c2 c2;
  initial begin
    p = new();
    c1 = new();
    c2 = new();
    p.a = 1;
    p.b = 2;
    p.display_p();
    c1.a = 3;
    c1.b = 4;
    c1.c = 5;
    c1.d = 6;
    c1.display_c1();
    c1.display_p();
    c2.a = 7;
    c2.b = 8;
    c2.c = 9;
    c2.d = 10;
    c2.e = 11;
    c2.f = 12;
    c2.display_p();
    c2.display_c1();
    c2.display_c2();
  end
endmodule
