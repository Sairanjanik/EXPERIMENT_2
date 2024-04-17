module decoder(a,y);
input [2:0]a;
output [7:0]y;
wire w0,w1,w2;
not g1(w0,a[0])
not g2(w1,a[1]);
not g3(w2,a[2]);
and g4(y[0],w0,w1,w2);
and g5(y[1],w2,w1,a[0]);
and g6(y[2],w2,a[1],w0);
and g7(y[3],w2,a[1],a[0]);
and g8(y[4],a[2],w1,w0);
and g9(y[5],a[2],w1,a[0]);
and g10(y[6],a[2],a[1],w0);
and g11(y[7],a[2],a[1],a[0]);
endmodule
