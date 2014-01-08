module Vo2maximosHelper

	def vo2(dados)
		format("%.2f", dados.distancia - 504/45)
	
end
end

