# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20121103171516) do

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

  create_table "individus", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.date     "date_de_naissance"
    t.string   "sexe"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
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

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",     :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "role",                   :default => "user"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
