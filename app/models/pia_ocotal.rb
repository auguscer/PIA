class PiaOcotal < ActiveRecord::Base
	has_and_belongs_to_many :proyectos
	has_many :fuentes, :through =>  :proyectos, :through => :pia_ocotals
end
