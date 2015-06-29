class ChangeItemHavesOfMicroposts2 < ActiveRecord::Migration
  def change
    change_column :microposts, :item_have, :boolean, null: true, default: false
  end
end
