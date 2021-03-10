module flipflop(input D,clock,reset,EN,output Q);
  wire nor1_o,nor2_o,nor4_o,and1_o,and2_o,and3_o,and4_o,D_not,clock_o,clock_o_not;
  and#17 and0(clock_o,EN,clock);
  not#7 not0(clock_o_not,clock_o);
  not#7 not1(D_not,D);
  and#17 and1(and1_o,clock_o,D),
          and2(and2_o,clock_o,D_not);
  nor#21 nor1(nor1_o,and2_o,nor2_o,reset);
  nor#14 nor2(nor2_o,and1_o,nor1_o);
  and#17 and3(and3_o,nor1_o,clock_o_not),
          and4(and4_o,nor2_o,clock_o_not);
  nor#21 nor3(Q,and4_o,nor4_o,reset);
  nor#14 nor4(nor4_o,and3_o,Q);
endmodule