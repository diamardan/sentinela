class CreateCasas < ActiveRecord::Migration[5.0]
  def change
    create_table :casas do |t|
      t.integer :id_fraccionamiento
      t.integer :id_calle
      t.integer :id_numero
      t.string :casa

      t.timestamps
    end
  end
end
