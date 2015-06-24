class AddItemNameToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :item_name, :string
  end
end
