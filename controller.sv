module controller(input serin,clk,rst,en,output logic en_1,en_2);
  reg [3:0] counter;
  always@(negedge clk,posedge rst)begin
    if(rst) counter<=4'b 0;
    else if(en)begin
      if(counter==0 && serin==0)
        counter <=4'b0001;
      else if(counter==11 && serin==1)counter<=0;
      else if(counter==11 && serin==0)counter<=7;
      else if(counter!=0)counter<=counter+1;
    end
  end
  always@(counter)begin
    if(counter ==0)begin 
      en_1=0;
      en_2=0;
    end
    else if(counter <7)begin
      en_1=1;
      en_2=0;
    end
  else begin
    en_1=0;
    en_2=1;
  end
end
endmodule
      
      
        
