class CreateVisitasRegistros < ActiveRecord::Migration[5.0]
  def change
    create_table :visitas_registros do |t|
    	t.string :fecha
    	t.string :hora
    	t.string :casa
    	t.string :nombre_visitante
    	t.string :apellidos_visitante
    	t.integer :tipo_visita
    	t.string :foto_identificacion
    	t.string :foto_placa

      t.timestamps
    end
  end
end
