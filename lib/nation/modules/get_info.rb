require 'net/http'
require 'json'

module GetInfo
    private
    
    def get_api_info(url)
        uri = URI.parse(url)
        JSON.parse(Net::HTTP.get(uri))
    end
end