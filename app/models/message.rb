class Message < ApplicationRecord
  belongs_to :user

  has_many :favors

  validates :content, presence: { message: "投稿内容を入力してください。" }
  validates :content, length: { maximum: 140, message: "140文字以内で入力してください。"}

  def favored_by?(user)
    user.in?(self.favors.map(&:user))
  end
end
