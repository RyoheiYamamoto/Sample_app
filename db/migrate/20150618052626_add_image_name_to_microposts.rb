class AddImageNameToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :image_name, :string
  end
end
