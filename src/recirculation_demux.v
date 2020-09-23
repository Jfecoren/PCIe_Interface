module recirculation_demux(
	input		din,				//Entrada del DEMUX
	input 		active,				//Entrada selectora (salida de la AND)
	output reg	out_demux,			//Salida al DEMUX_Striping
	output reg	out_block			//Salida de vuelta
);
	
	always @(*)
		begin: ReDEMUX
			case((active))
				0 : begin
					out_demux = 0;
					out_block = din;
					end
				1 : begin				
					out_demux = din;
					out_block = 0;
					end
			endcase
		end
endmodule