class CreateAntropos < ActiveRecord::Migration
  def change
    create_table :antropos do |t|
      t.float :estatura
      t.float :pescoco
      t.float :ombro
      t.float :torax
      t.float :cintura
      t.float :abdomen
      t.float :quadril
      t.float :braco_esq
      t.float :antebraco_esq
      t.float :coxa_esq
      t.float :panturrilha_esq
      t.float :braco_dir
      t.float :antebraco_dir
      t.float :panturrilha_dir
      t.float :coxa_dir
      t.references :aluno, index: true
            t.belongs_to :aluno, :null => false


      t.timestamps
    end
  end
end
