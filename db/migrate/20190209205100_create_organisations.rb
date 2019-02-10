class CreateOrganisations < ActiveRecord::Migration[5.1]
  def change
    create_table :organisations do |t|
      t.string "name", default: "", null: false
      t.string "address", default: "", null: false
      t.string "postcode", default: "", null: false
      t.string "email", default: "", null: false
#     t.text "description", default: "", null: false
      t.text "description"
      t.string "website", default: "", null: false
      t.string "telephone", default: "", null: false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.float "latitude"
      t.float "longitude"
      t.boolean "gmaps"
#     t.text "donation_info", default: "", null: false
      t.text "donation_info"
      t.boolean "publish_address", default: false
      t.boolean "publish_phone", default: false
      t.boolean "publish_email", default: true
      t.datetime "deleted_at"
      t.string "type", default: "Organisation"
      t.boolean "non_profit"
      t.string "slug"
      t.datetime "imported_at"  
      t.timestamps
    end
  end
end
