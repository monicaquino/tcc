class AddRelacaosToAlunos < ActiveRecord::Migration
  def change
    add_reference :relacaos, :aluno_id, index: true
  end
end
