class RenameUserMicropostColumnToFavoriteItems < ActiveRecord::Migration
  def change
      rename_column :favorite_items, :user_id, :favoller_id
      rename_column :favorite_items, :micropost_id, :faved_id
  end
end
