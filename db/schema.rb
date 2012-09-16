# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120916150123) do

  create_table "adversaires", :force => true do |t|
    t.string   "nom"
    t.integer  "equipe_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "adversaires", ["equipe_id"], :name => "index_adversaires_on_equipe_id"

  create_table "equipes", :force => true do |t|
    t.string   "nom_club"
    t.string   "nom_competition"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "rencontres", :force => true do |t|
    t.integer  "equipe_id"
    t.integer  "adversaire_id"
    t.date     "jour"
    t.time     "heure"
    t.boolean  "domicile"
    t.boolean  "exempt"
    t.boolean  "reportee"
    t.integer  "numero"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "rencontres", ["adversaire_id"], :name => "index_rencontres_on_adversaire_id"
  add_index "rencontres", ["equipe_id"], :name => "index_rencontres_on_equipe_id"

end
