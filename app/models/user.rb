class User < ApplicationRecord
  has_many :messages
  has_many :active_relationships, class_name: "Relationship", foreign_key: "following_id"
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "follower_id"
  has_many :followings, through: :active_relationships, source: :follower
  has_many :followers, through: :passive_relationships, source: :following

  def password=(raw_password)
    if raw_password.kind_of?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    elsif raw_password.nil?
      self.hashed_password = nil
    end
  end
end
