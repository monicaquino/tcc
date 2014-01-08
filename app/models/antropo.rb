class Antropo < ActiveRecord::Base
  belongs_to :aluno
 delegate :nome, :to => :aluno
end

