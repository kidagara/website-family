require "test_helper"

describe UsersController do
  it "gets index" do
    get :index
    must_respond_with :success
  end

  it "gets new" do
    get :new
    must_respond_with :success
    assigns(:user).wont_be_nil
  end

end
