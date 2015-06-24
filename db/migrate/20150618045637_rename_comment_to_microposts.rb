class RenameCommentToMicroposts < ActiveRecord::Migration
  def change
  	rename_column :microposts, :comment, :content
  end
end
