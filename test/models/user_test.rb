require "test_helper"

describe User do
  let(:user) { Factory.build :user }

  it "must be a valid object" do
    user.valid?.must_equal true
  end

  it "requires a name" do
    user.name = " "
    user.valid?.wont_equal true
  end

  it "requires a login" do
    user.login=" "
    user.valid?.wont_equal true
  end

  it "requires an email" do
    user.email=" "
    user.valid?.wont_equal true
  end

  it "has a password" do
    user.must_respond_to :password
  end

  it "has a password confirmation" do
    user.must_respond_to :password_confirmation
  end

end
