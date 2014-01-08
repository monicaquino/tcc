class CreatePercentuals < ActiveRecord::Migration
  def change
    create_table :percentuals do |t|
      t.Float :triceps
      t.string :supra_f
      t.string :supra_m
      t.string :abdomen
      t.string :coxa
      t.string :subescapular
      t.references :aluno, index: true

      t.timestamps
    end
  end
end
