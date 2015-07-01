class CreateFavoriteItems < ActiveRecord::Migration
  def change
    create_table :favorite_items do |t|
      t.integer :user_id
      t.integer :micropost_id
      t.boolean :check_item
      t.boolean :want_item
      t.boolean :have_item

      t.timestamps
    end
    add_index :favorite_items, :user_id
    add_index :favorite_items, :micropost_id
    add_index :favorite_items, [:user_id, :micropost_id], unique: true
  end
end
