class CreateNumerosCasas < ActiveRecord::Migration[5.0]
  def change
    create_table :numeros_casas do |t|
      t.integer :id_fraccionamiento
      t.integer :id_calle
      t.string  :numero

      t.timestamps
    end
  end
end
