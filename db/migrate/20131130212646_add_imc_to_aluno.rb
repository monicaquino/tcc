class AddImcToAluno < ActiveRecord::Migration
  def change
    add_reference :imcs, :aluno_id, index: true
  end
end
