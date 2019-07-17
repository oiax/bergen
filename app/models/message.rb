class Message < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user

  validates :content, presence: true
  validates :content, length: { maximum: 140 }
end
