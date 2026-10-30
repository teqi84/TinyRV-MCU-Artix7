module tb_cong ();
 reg a;
 reg b;
 wire c;
cong uut (
 .a(a),
 .b(b),
 .c(c) );
 initial begin
 a = 1'b1;
 b = 1'b1;
 #10;
 a = 1'b0;
 b = 1'b1;
 
end
 endmodule
 