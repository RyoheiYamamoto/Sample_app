class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  mount_uploader :item_image, ImageUploader

  #お気に入りアイテムの追記
  has_many :favorite_items, foreign_key: "faved_id", dependent: :destroy
  has_many :favollers, through: :favorite_items, source: :favoller

  # 与えられたユーザーがフォローしているユーザー達のマイクロポストを返す。
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end

  def favorite_for(user)
    favorite_items.find_by(user_id: user)
  end
end