class CreateCalles < ActiveRecord::Migration[5.0]
  def change
    create_table :calles do |t|
      t.integer :id_fraccionamiento
      t.string :nombre_calle
      t.timestamps
    end
  end
end
