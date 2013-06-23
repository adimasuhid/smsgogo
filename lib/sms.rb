module Sms

  def self.send_sms(numbers,message)
    #refactor to one request
    result = {}
    numbers.each do |number|
      result = send_api(number,message)
    end
    result
  end

  def self.send_api(number, message)
    begin
    response = RestClient.post FIREFLY_API_HOST, 
      { api: FIREFLY_API_KEY, number: number, message: message}
    puts response
    result = JSON.parse response
    rescue
      puts "Error on #{number}"
      result = {}
      result["status"] = "error"
    end
    result
  end


end
