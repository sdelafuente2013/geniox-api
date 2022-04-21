require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is not valid without a name" do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end
  it "is not valid without a email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end
end

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

RSpec.describe Author, :type => :model do
  it "is not valid without a name" do
    author = Author.new(name: nil)
    expect(author).to_not be_valid
  end
  it "is not valid without a lastname" do
    author = Author.new(lastname: nil)
    expect(author).to_not be_valid
  end
end