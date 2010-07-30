class FuenteAddColumn < ActiveRecord::Migration
  def self.up
    add_column :fuentes, :proyecto_id, :integer 
  end

  def self.down
    remove_column :fuentes, :proyecto_id
  end
end
