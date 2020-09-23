module recirculation_demux(
	input [31:0]		din,				//Entrada del DEMUX
	input 				active,				//Entrada selectora (salida de la AND)
	output reg [31:0]	out_demux,			//Salida al DEMUX_Striping
	output reg [31:0]	out_block			//Salida de vuelta
);
	
	always @(*)
		begin: ReDEMUX
			case((active))
				0 : begin
					out_demux = 'b0;
					out_block = din;
					end
				1 : begin				
					out_demux = din;
					out_block = 'b0;
					end
			endcase
		end
endmodule