class CinturaQuadril < ActiveRecord::Base
  belongs_to :aluno


  def relacao
  	  :cintura/:quadril
end
end