module Sms

  def self.send_sms(numbers,message)
    #refactor to one request
    numbers.each do |number|
      begin
      response = RestClient.post FIREFLY_API_HOST, 
        { api: FIREFLY_API_KEY, number: number, message: message}
      puts response
      rescue
        puts "Error on #{number}"
        next
      end
    
    end
  end

end
