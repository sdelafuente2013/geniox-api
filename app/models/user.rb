class User < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
