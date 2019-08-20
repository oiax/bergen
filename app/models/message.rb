class Message < ApplicationRecord
  validates :content, presence: { message: "投稿内容を入力してください。" }
end
