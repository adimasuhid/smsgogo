require 'spec_helper'

describe List do


  describe "#parse_csv" do

    before :each do
      @list = FactoryGirl.build(:list)
    end

    it "returns 2 rows" do
      VCR.use_cassette 'csv/parse_csv' do
        response = @list.parse_csv
        response.length.should eq 2
      end
    end

  end


end
