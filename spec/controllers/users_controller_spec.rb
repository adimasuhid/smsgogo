require 'spec_helper'

describe UsersController do
  describe "POST #create" do
    it "redirects to home page upon save" do
      response.should redirect_to root_path
    end
  end
end
