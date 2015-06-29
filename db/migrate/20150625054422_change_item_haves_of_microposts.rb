class ChangeItemHavesOfMicroposts < ActiveRecord::Migration
  def change
    change_column :microposts, :item_have, :boolean, default: false
  end
end
