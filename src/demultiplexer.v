module demultiplexer(
	input		data_in,
	output reg	out_0,
	output reg	out_1,
	input		selector
);
	
	always @(*)
		begin: DEMUX
			case((selector))
				0 : begin
					out_0 = data_in;
					out_1 = 0;
					end
				1 : begin
					out_0 = 0;
					out_1 = data_in;
					end
			endcase
		end
endmodule
			