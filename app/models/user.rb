class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  
  validates :user_name, :handle_name, presence: true
  validates :user_name, uniqueness: true

  def password=(raw_password)
    if raw_password.kind_of?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    elsif raw_password.nil?
      self.hashed_password = nil
    end
  end
end
