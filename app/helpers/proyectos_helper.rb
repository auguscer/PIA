module ProyectosHelper
def add_fuente_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :fuentes, :partial => 'fuente', :object => Fuente.new
    end
  end
end
