class CreatePiaOcotalsProyectos < ActiveRecord::Migration
  def self.up
    create_table :pia_ocotals_proyectos do |t|
      t.integer :pia_ocotal_id
      t.integer :proyecto_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pia_ocotals_proyectos
  end
end
