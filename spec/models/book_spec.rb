require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "is not valid without a title" do
    book = Book.new(title: nil)
    expect(book).to_not be_valid
  end
  it "is not valid without a gender" do
    book = Book.new(gender: nil)
    expect(book).to_not be_valid
  end
end
