require 'spec_helper'

describe Sms do

  describe "::send_api" do

    context "correct number" do
      it "gets a successful response" do
        VCR.use_cassette 'sms/send_api' do
          response = Sms.send_api("09172416140", "test")
          response["status"].should eq "success"
        end
      end
    end

    context "erroneous number" do
      it "gets a failure response" do
        VCR.use_cassette 'sms/send_api_error' do
          response = Sms.send_api("2","test")
          response["status"].should eq "failure"
        end
      end

    end

  end

  describe "::send_sms" do
    before :all do
      @numbers = ["09172416140","09062785408"]
    end

    it "gets a successful response" do
      VCR.use_cassette 'sms/send_api_multiple' do
        response = Sms.send_sms @numbers, "test"
        response["status"].should eq "success"
      end
    end

  end

end
