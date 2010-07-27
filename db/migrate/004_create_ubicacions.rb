class CreateUbicacions < ActiveRecord::Migration
  def self.up
    create_table :ubicacions do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :ubicacions
  end
end
