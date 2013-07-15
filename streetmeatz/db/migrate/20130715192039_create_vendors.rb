class CreateVendors < ActiveRecord::Migration
  def up
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :hours
      t.string :phone
      t.string :twitter
      t.boolean :gmaps
      t.timestamps
  end
end

  def down
    drop_table :vendors
  end
end