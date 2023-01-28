# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_27_090617) do
  create_table "covid_observations", id: false, force: :cascade do |t|
    t.string "country"
    t.date "observation_date"
    t.integer "confirmed"
    t.integer "deaths"
    t.integer "recovered"
    t.index ["country", "observation_date"], name: "index_covid_observations_on_country_and_observation_date", unique: true
  end

end
