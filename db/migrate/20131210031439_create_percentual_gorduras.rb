class CreatePercentualGorduras < ActiveRecord::Migration
  def change
    create_table :percentual_gorduras do |t|
      t.float :triceps
      t.float :supra_f
      t.float :supra_m
      t.float :abdomen
      t.float :coxa
      t.float :subescapular
      t.references :aluno, index: true

      t.timestamps
    end
  end
end
