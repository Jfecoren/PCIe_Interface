module mux_unstriping(				//Modulo Mux Un-Striping
	output reg	data_out,			//Salida a la etapa de flops
	input 		data_in0,			//Entrada del Demux
	input 		data_in1,			//Entrada del Demux
	input 		selector			//Selector
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
			