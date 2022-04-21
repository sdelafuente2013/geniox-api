class Author < ApplicationRecord
  has_and_belongs_to_many :books

  validates :name, :lastname, presence: true
end
