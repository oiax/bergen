class Favor < ApplicationRecord
  belongs_to :user
  belongs_to :message

  validates :user, uniqueness: { scope: :message }
end
