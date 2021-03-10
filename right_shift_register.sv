module right_shift_register(input inp, clock,enable, reset,output [5:0] oup);
  wire [6:0]w;
  assign w[6] = inp;
  genvar i;
  generate 
    for(i=6;i>0;i-=1)begin
      flipflop f(w[i],clock,reset,enable,w[i-1]);
    end
  endgenerate
  assign oup = w[5:0];
endmodule