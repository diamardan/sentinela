class CreateSentinelaUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :sentinela_usuarios do |t|
    	t.string :nombre
    	t.string :apellidos
    	t.string :usuario
    	t.string :password
    	t.string :enc_password
    	t.string :email
    	t.string :celular
    	t.integer :fraccionamiento
    	t.string :domicilio
    	t.string :calle
    	t.string :numero

      t.timestamps
    end
  end
end
