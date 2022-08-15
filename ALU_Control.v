`timescale 1ns/1ns
module ALU_Control( clk, inSignal, outSignal );
  input clk ;
  input [5:0] inSignal ;
  output [5:0] outSignal ;

  reg [5:0] temp ;
  reg [6:0] counter ;
 
  always@( inSignal )
  begin
    if ( inSignal == 6'b011011 )
    begin
      counter = 7'd0 ;
    end

  end

  always@( posedge clk ) begin
    temp = inSignal ;
    if ( inSignal == 6'b011011 ) begin
      counter = counter + 1'b1 ;

      if ( counter == 7'd33 ) begin
        temp = 6'b111111 ; // Open HiLo reg for Div
        counter = 7'd0 ;
      end

    end

  end

  assign outSignal = temp ;

endmodule
