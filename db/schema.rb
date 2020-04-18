
ActiveRecord::Schema.define(version: 2020_01_05_131201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notification", force: :cascade do |t|
    t.string "sender"
    t.string "receiver"
    t.string "title"
    t.string "type"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
