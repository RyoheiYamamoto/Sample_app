class AddItemImageToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :item_image, :string
  end
end
