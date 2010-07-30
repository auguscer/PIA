class Fuente < ActiveRecord::Base
belongs_to :proyecto
belongs_to :tipo_fuente
end
