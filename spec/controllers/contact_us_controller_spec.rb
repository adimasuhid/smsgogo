require 'spec_helper'

describe ContactUsController do

  describe "POST #create" do

    before :each do
      @attrs = {
        name: "ace",
        email: "something@email.com",
        message: "something"
      }
      post :create, contact_us: @attrs
    end

    it "creates a new contact entry" do
      expect{
        post :create, contact_us: @attrs
      }.to change(ContactUs, :count).by(1)

    end

    it "redirects to home page upon save" do
      response.should redirect_to root_path
    end

  end

end
