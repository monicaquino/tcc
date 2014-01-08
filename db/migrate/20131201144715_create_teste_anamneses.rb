class CreateTesteAnamneses < ActiveRecord::Migration
  def change
    create_table :teste_anamneses do |t|
      t.text :meta
      t.string :condicionamento
      t.string :tipo_sanguineo
      t.string :anemia
      t.string :fumante
      t.text :alergia
      t.text :doenca
      t.text :lesao
      t.text :cirurgia
      t.text :medicacao
      t.string :emergencia
      t.string :telefone
      t.text :observacao
      t.text :dieta
      t.float :peso
      t.float :altura
      t.references :aluno, index: true
      t.belongs_to :aluno, :null => false


      t.timestamps
    end
  end
end
