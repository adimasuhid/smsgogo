require 'spec_helper'

describe List do


  describe "#parse_csv" do

    before :each do
      @list = List.new(csv_url:"https://www.filepicker.io/api/file/stA3AwKzSc2mQ6Ds25jL")
    end

    it "returns 2 rows" do
      VCR.use_cassette 'csv/parse_csv' do
        response = @list.parse_csv
        response.length.should eq 2
      end
    end

  end


end
