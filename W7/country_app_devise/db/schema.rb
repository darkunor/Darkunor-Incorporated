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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20140820183301) do
=======
ActiveRecord::Schema.define(:version => 20140821183924) do

  create_table "continents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
>>>>>>> b8e428f8059ccb5792d7f21390b8721512f63771

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.integer  "population"
    t.string   "language"
    t.string   "currency"
<<<<<<< HEAD
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image"
=======
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "image"
    t.integer  "continent_id"
>>>>>>> b8e428f8059ccb5792d7f21390b8721512f63771
  end

end
