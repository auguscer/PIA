class Proyecto < ActiveRecord::Base
	belongs_to :sector
	belongs_to :tipo_proy
	belongs_to :ubicacion
	belongs_to :estado
	belongs_to :contratacion
	has_and_belongs_to_many :pia_ocotals
end
