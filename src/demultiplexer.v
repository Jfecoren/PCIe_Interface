module demultiplexer(			//Modulo de-multiplexor
	input		data_in,		//Entrada
	input		selector,
	output reg	out_0,
	output reg	out_1
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
			