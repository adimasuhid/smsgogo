require 'spec_helper'

describe WelcomeController do
  
  describe "GET #index" do
    before :each do
      get :index
    end

    it "renders the :index view" do
      response.should render_template :index
    end

    it "assigns a new contact us to @contact" do
      assigns(:contact).should be_an_instance_of ContactUs
    end

    it "assigns a new user to @user" do
      assigns(:user).should be_an_instance_of User
    end
  end

end
