class CreatePiaOcotals < ActiveRecord::Migration
  def self.up
    create_table :pia_ocotals do |t|
      t.string :nombre
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :pia_ocotals
  end
end
