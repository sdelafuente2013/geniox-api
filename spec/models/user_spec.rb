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

  subject {
    described_class.new(name: 'John', email: 'john@home.xyz')
  }

  describe 'validation for email:' do
    context '=> when email is not unique' do
      before { described_class.create!(name: 'foo', email: 'john@home.xyz') }
      it {expect(subject).to be_invalid}
    end

    context '=> when email is  unique' do
      before { described_class.create!(name: 'foo', email: 'jane@home.xyz') }
      it {expect(subject).to be_valid}
    end

  end
end