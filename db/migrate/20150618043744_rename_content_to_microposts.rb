class RenameContentToMicroposts < ActiveRecord::Migration
  def change
  	rename_column :microposts, :content, :comment
  end
end
