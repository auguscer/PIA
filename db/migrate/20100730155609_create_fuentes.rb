class CreateFuentes < ActiveRecord::Migration
  def self.up
    create_table :fuentes do |t|
      t.integer :tipo_fuente_id
      t.decimal :monto

      t.timestamps
    end
  end

  def self.down
    drop_table :fuentes
  end
end
