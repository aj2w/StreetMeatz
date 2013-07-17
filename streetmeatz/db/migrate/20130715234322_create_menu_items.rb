class CreateMenuItems < ActiveRecord::Migration
  def up
    create_table :menuitems do |t|
      t.string :name
      t.string :description
      t.float :price
      t.timestamps
  end
end

  def down
    drop_table :menuitems
  end
end
