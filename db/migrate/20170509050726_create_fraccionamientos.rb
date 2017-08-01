class CreateFraccionamientos < ActiveRecord::Migration[5.0]
  def change
    create_table :fraccionamientos do |t|
    	t.string :clave
    	t.string :nombre
    	t.integer :numero_casas
    	t.integer :estado

    	t.timestamps
    end
  end
end
