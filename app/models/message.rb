class Message < ApplicationRecord
  validates :content, presence: { message: "投稿内容を入力してください。" }
  validates :content, length: { maximum: 140, message: "140文字以内で入力してください。"}
end
