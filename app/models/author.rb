class Author < ApplicationRecord
  belongs_to :book

  validates :name, :lastname, presence: true
end
