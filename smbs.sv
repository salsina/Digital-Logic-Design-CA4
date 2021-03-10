module smbs(input inp,input [3:0]PB,input [1:0]LB,output logic[15:0]W);
  always @(PB,LB)begin
    for(int i=0;i<4;i+=1)begin
      if (PB[i] == 1)begin
        W[i*4 + LB]=inp;
      end
    end
  end
endmodule