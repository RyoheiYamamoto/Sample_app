class RenameImageNameToMicroposts < ActiveRecord::Migration
  def change
  	rename_column :microposts, :image_name, :item_name
  end
end
