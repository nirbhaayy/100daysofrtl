// A simple mux

module day1 (
  input   wire [7:0]    a_i,
  input   wire [7:0]    b_i,
  input   wire          sel_i,
  output  wire [7:0]    y_o
);

  always @(a_i,b_i,y_o,sel_i) begin
    
    case(sel_i)
       2'b00 : y_o = a_i;
       2'b01:  y_o = b_i;
       default : y_o = 0;
    endcase 
    
  end    

endmodule
