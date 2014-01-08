module PercentualGordurasHelper

	 	def densidade_m(dados)
	    
		format("%.2f", 1.17136 - (0.06706 * Math.log10(dados.triceps + dados.supra_m + dados.abdomen)))

 	end
	
	def densidade_f(dados)

	     format("%.2f", 1.17136 - (0.06706 * Math.log10(dados.coxa + dados.subescapular + dados.supra_f)))

	end

	def gordura_absoluta(dados)
    
	end
end
