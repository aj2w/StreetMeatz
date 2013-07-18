class CreateVendors < ActiveRecord::Migration
  def up
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :twitter
      t.boolean :gmaps
      t.belongs_to :user
      t.timestamps
  end
end

  def down
    drop_table :vendors
  end
end