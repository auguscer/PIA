class Proyecto < ActiveRecord::Base
	belongs_to :sector
	belongs_to :tipo_proy
	belongs_to :ubicacion
	belongs_to :estado
	belongs_to :contratacion
	has_and_belongs_to_many :pia_ocotals
  has_many :fuentes, :dependent => :destroy
  validates_associated :fuentes

def new_fuente_attributes=(fuente_attributes)
    fuente_attributes.each do |attributes|
      fuentes.build(attributes)
    end
  end
  
  after_update :save_fuentes

  def existing_fuente_attributes=(fuente_attributes)
    fuentes.reject(&:new_record?).each do |fuente|
      attributes = fuente_attributes[fuente.id.to_s]
      if attributes
        fuente.attributes = attributes
      else
        fuentes.delete(fuente)
      end
    end
  end

  def save_fuentes
    fuentes.each do |fuente|
      fuente.save(false)
    end
  end

end
