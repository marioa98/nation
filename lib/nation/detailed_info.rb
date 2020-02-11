require 'net/http'
require 'json'
require_relative "modules/get_info"

# # API Documentation: https://www.mediawiki.org/wiki/API:Main_page

class DetailedInfo
    include GetInfo
    
    def get(nation_name)
        nation_name = nation_name.downcase.split.map(&:capitalize).join("_")
        api_endpoint = "https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts&titles=#{nation_name}&formatversion=2&exsentences=10&exlimit=1&explaintext=1"
        response = get_api_info(api_endpoint)

        raise "Not detailed info found for country #{nation_name}" if response["query"]["pages"][0]["missing"]
        country_detailed_info = {"detailed_info": response["query"]["pages"][0]["extract"]}
    end
end