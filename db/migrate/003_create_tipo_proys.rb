class CreateTipoProys < ActiveRecord::Migration
  def self.up
    create_table :tipo_proys do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_proys
  end
end
