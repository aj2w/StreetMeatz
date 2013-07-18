class CreateMenuitemsVendors < ActiveRecord::Migration
  def up
    create_table :menuitems_vendors, :id => false do |t|
      t.belongs_to :menuitem
      t.belongs_to :vendor
    end
  end

  def down
    drop_table :menuitems_vendors
  end
end
