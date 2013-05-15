class ContactUsController < ApplicationController
  def index
    @active = "contact"
    @contact = ContactUs.new
  end

  def create
    @contact = ContactUs.new params["contact_us"]
    if @contact.save
      redirect_to contact_us_path, :flash => { :success => "Thanks! We'll respond to you quickly." }
    else
      redirect_to contact_us_path, :flash => {:error => "You weren't able to send. Make sure you gave us your name, email, and message!"}
    end
  end
end
