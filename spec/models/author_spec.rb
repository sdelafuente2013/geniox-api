require 'rails_helper'

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

