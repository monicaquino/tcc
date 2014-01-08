class Aluno < ActiveRecord::Base
	has_many  :avaliacaos
	has_many :antropos
	has_many :cintura_quadris
	has_many :calculo_imcs
	has_many :teste_anamneses
    has_one :user
    
	  accepts_nested_attributes_for :antropos, :cintura_quadris, :calculo_imcs, :teste_anamneses

end
