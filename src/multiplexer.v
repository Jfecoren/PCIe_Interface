module multiplexer(
	output reg data_out,
	input 		data_in0,
	input 		data_in1,
	input 		selector
);
	
	always @(*)
		begin: MUX
			case((selector))
				0 : data_out=data_in0;
				1 : data_out=data_in1;
			default data_out=1'bx;
			endcase
		end
endmodule
			