require 'spec_helper'

describe "the signin process" do
  context "Given the correct details" do
    before :each do
      @user = FactoryGirl.create(:user)
    end

    it "signs in" do
      visit new_user_session_path
      within("#new_user") do
        fill_in "user_email", with: "something@email.com"
        fill_in "user_password", with: "sample12345"
      end
      click_on "Sign in"
      expect(page).to have_content "Logout"
    end

  end
end
