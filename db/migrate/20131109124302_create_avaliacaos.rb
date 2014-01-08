class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.integer :pessoa_id
      t.timestamps
    end    
    add_index :avaliacaos, :unique => true
  end
end
