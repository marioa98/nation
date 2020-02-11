require 'net/http'
require 'json'
require_relative "modules/get_info"

# API Documentation: https://restcountries.eu/#sources

class BasicInfo
    include GetInfo

    def get(nation_code)
        api_endpoint = "https://restcountries.eu/rest/v2/name/#{nation_code}?fullText=true"
        response = get_api_info(api_endpoint).first

        raise "Country info not avaliable" if response.class != Hash

        languages = response["languages"].map{|k, v| k["name"]}
        country_basic_info = {"name": response["name"], "capital": response["capital"], "continent": response["region"],
        "region": response["subregion"], "population": response["population"], "languages": languages}
    end
end