module r_S_register_always(input inp, clock,enable, reset,output logic[5:0] oup);
  logic [5:0] temp_oup=oup;
  always@(negedge clock,posedge reset)begin
    if(reset==1)
     temp_oup<=6'b0;
    else if(enable==1)temp_oup<={inp,temp_oup[5:1]};
    else if(enable==0) temp_oup<=temp_oup;
  end
  assign #76 oup = temp_oup;
endmodule