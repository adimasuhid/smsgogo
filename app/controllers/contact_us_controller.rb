class ContactUsController < ApplicationController
  def create
    @contact = ContactUs.new params["contact_us"]
    if @contact.save
      redirect_to root_path, :flash => { :success => "Thanks! We'll respond to you quickly." }
    else
      redirect_to root_path, :flash => {:error => "You weren't able to send. Make sure you gave us your name, email, and message!"}
    end
  end
end
