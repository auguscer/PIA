class CreateContratacions < ActiveRecord::Migration
  def self.up
    create_table :contratacions do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :contratacions
  end
end
