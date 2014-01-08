class CreateCalculoImcs < ActiveRecord::Migration
  def change
    create_table :calculo_imcs do |t|
      t.float :altura
      t.float :peso
      t.references :aluno, index: true
            t.belongs_to :user, :null => false

      t.timestamps
    end
  end
end
