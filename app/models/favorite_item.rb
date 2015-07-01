class FavoriteItem < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :micropost, class_name: "Micropost"
  validates :favoller_id, presence: true
  validates :faved_id, presence: true
end
