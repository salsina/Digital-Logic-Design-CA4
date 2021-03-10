module tb_register();
  logic inp;
  logic [5:0]oup;
  logic clk,rst,en;
  right_shift_register r(inp,clk,en,rst,oup);
  initial begin
    clk=0;rst=1;en=1;
    #200 rst=0;
    #200 inp=1;
    #200 clk=1;
    #200 clk=0;

    #200 inp=0;
    #200 clk=1;
    #200 clk=0;

    #200 inp=1;
    #200 clk=1;
    #200 clk=0;
    
    #200 clk=1;
    #200 clk=0;

    #200 inp=0;
    #200 clk=1;
    #200 clk=0;
    
    #200 inp=1;
    #200 clk=1;
    #200 clk=0;
    #200 inp=0;
    #200 clk=1;
    #200 clk=0;
    #200 inp=1;
    #200 clk=1;
    #200 clk=0;
    #200 rst=1;
    #200 rst=0;
    #200 inp=1;
    #200 clk=1;
    #200 clk=0;
    #400;
  end
endmodule