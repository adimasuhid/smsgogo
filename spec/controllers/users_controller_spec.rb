require 'spec_helper'

describe UsersController do

  describe "POST #create" do

    before :each do
      @attrs = {
        name: "Ace",
        email: "something2@email.com",
        password: "sample123",
        password_confirmation: "sample123"
      }
    end

    it "redirects to home page upon save" do
      post :create, user: @attrs
      response.should redirect_to root_path
    end
    
    it "creates a new user entry" do
      expect{
        post :create, user: @attrs
      }.to change(User, :count).by(1)
    end

  end

end
