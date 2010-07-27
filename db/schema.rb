# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100727165938) do

  create_table "contratacions", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pia_ocotals", :force => true do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pia_ocotals_proyectos", :force => true do |t|
    t.integer  "pia_ocotal_id"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", :force => true do |t|
    t.string   "municipio"
    t.string   "departamento"
    t.string   "nombre_proyecto"
    t.string   "descripcion"
    t.text     "objetivos_metas"
    t.text     "justificacion"
    t.decimal  "costo_inversion"
    t.integer  "plazo_ejecucion"
    t.date     "fecha_inicio"
    t.date     "fecha_final"
    t.decimal  "mano_obra"
    t.decimal  "materiales"
    t.decimal  "equipos"
    t.decimal  "gasto_general"
    t.decimal  "otros_costos"
    t.decimal  "empleos_hombres"
    t.decimal  "empleos_mujeres"
    t.integer  "sector_id"
    t.integer  "tipo_proy_id"
    t.integer  "ubicacion_id"
    t.integer  "estado_id"
    t.integer  "contratacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_proys", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubicacions", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
