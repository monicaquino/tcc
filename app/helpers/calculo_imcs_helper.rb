module CalculoImcsHelper

	def imc(dados)
		format("%.2f", dados.peso/(dados.altura * dados.altura))
	 
      end
  end
