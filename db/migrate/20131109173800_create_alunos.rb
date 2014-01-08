class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :sobrenome
      t.string :sexo
      t.date :data_nas
      t.decimal :telefone
      t.string :estado
      t.string :cidade

      t.timestamps
    end
        add_index :alunos, :user_id, :unique => true

  end
  def self.up
    add_column :alunos, :peso, :float
    add_column :alunos, :altura, :float
  end
  end
end
