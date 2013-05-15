class ContactUsController < ApplicationController
  def index
    @active = "contact"
    @contact = ContactUs.new
  end

  def create
    @contact = ContactUs.new params["contact_us"]
    if @contact.save
      redirect_to contact_us_path, :flash => { :success => "Message" }
    else
      redirect_to contact_us_path, :flash => {:error => "Error"}
    end
  end
end
