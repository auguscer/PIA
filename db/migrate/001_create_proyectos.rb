class CreateProyectos < ActiveRecord::Migration
  def self.up
    create_table :proyectos do |t|
      t.string :municipio
      t.string :departamento
      t.string :nombre_proyecto
      t.string :descripcion
      t.text :objetivos_metas
      t.text :justificacion
      t.decimal :costo_inversion
      t.integer :plazo_ejecucion
      t.date :fecha_inicio
      t.date :fecha_final
      t.decimal :mano_obra
      t.decimal :materiales
      t.decimal :equipos
      t.decimal :gasto_general
      t.decimal :otros_costos
      t.decimal :empleos_hombres
      t.decimal :empleos_mujeres
      t.integer :sector_id
      t.integer :tipo_proy_id
      t.integer :ubicacion_id
      t.integer :estado_id
      t.integer :contratacion_id

      t.timestamps
    end
  end

  def self.down
    drop_table :proyectos
  end
end
