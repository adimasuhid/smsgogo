require 'spec_helper'

describe Recipient do
  describe "::save_details" do
    before :all do
      @numbers = [
        ["09062018884"],
        ["09172416140"]
      ]
    end

    it "creates recipients" do
      expect{
        Recipient.save_details(@numbers)
      }.to change(Recipient, :count).by(2)
    end

    it "return an array" do
      recipients = Recipient.save_details @numbers
      recipients.should be_an_instance_of Array
    end

    it "returns 2 numbers" do
      recipients = Recipient.save_details @numbers
      recipients.length.should eq(2)
    end
  end
end
