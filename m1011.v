module m1011( clk, rst, inp, outp);

   input clk, rst, inp;
   output outp;

   reg [1:0] state;
   reg outp;

   always @( posedge clk, rst )
   begin
   if( rst )
       state <= 2'b00;
   else
   begin
       case( {state,inp} )
          3'b000: begin
             state <= 2'b00;
             outp  <= 0;
          end
          3'b001: begin
             state <= 2'b01;
             outp  <= 0;
          end
          3'b010: begin
             state <= 2'b10;
             outp  <= 0;
          end
          3'b011: begin
             state <= 2'b01;
             outp  <= 0;
          end
          3'b100: begin
             state <= 2'b00;
             outp  <= 0;
          end
          3'b101: begin
             state <= 2'b11;
             outp  <= 0;
          end
          3'b110: begin
             state <= 2'b10;
             outp  <= 0;
          end
          3'b111: begin
             state <= 2'b01;
             outp  <= 1;
          end

       endcase
   end
end

endmodule
