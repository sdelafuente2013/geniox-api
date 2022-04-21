class Book < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :authors

  validates :title, :gender, presence: true
end
