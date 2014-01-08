class CreateVo2maximos < ActiveRecord::Migration
  def change
    create_table :vo2maximos do |t|
      t.float :distancia
      t.references :aluno, index: true

      t.timestamps
    end
  end
end
