module tb();
  logic d,clk,rst,en,out;
  flipflop f(d,clk,rst,en,out);
  initial begin
    #20 d=0;clk=1;rst=0;en=1;
    #1000 clk = 0;
    #1000 d=1;
    #1000 clk=1;
    #1000 clk=0;
    #1000 d=0;
    #1000 clk=1;
    #1000 clk=0;
    #1000 en=0;
    #1000 clk=1;d=1;
    #1000 clk=0;en=1;
    #1000 clk=1;
    #1000 clk=0;
    #1000 rst=1;
    #1000 ;
    
  end
endmodule
    
    
