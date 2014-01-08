class CreateCinturaQuadrils < ActiveRecord::Migration
  def change
    create_table :cintura_quadrils do |t|
      t.float :cintura
      t.float :quadril
      t.references :aluno, index: true
         t.belongs_to :user, :null => false

      t.timestamps
    end
  end
end
