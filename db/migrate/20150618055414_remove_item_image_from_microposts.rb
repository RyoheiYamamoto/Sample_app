class RemoveItemImageFromMicroposts < ActiveRecord::Migration
  def change
  	remove_column :microposts, :item_image, :string
  	remove_column :microposts, :item_name, :string
  end
end
