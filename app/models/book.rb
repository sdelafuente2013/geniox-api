class Book < ApplicationRecord
  belongs_to :user
  has_many :authors, dependent: :destroy

  validates :title, :gender, presence: true
end
