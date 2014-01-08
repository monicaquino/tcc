class AddAntroposToAluno < ActiveRecord::Migration
  def change
    add_column :alunos, :aluno_id, :integer
  end
end
