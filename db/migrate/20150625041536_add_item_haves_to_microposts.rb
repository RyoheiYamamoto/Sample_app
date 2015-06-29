class AddItemHavesToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :item_have, :boolean
  end
end
