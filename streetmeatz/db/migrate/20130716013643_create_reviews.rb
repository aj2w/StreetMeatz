class CreateReviews < ActiveRecord::Migration
  def up
    create_table :reviews do |t|
      t.string :text
      t.integer :rating
      t.belongs_to :vendor
      t.belongs_to :user
      t.timestamps
  end
end

  def down
    drop_table :reviews
  end
end
