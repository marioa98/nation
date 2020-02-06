require 'net/http'
require 'json'

# API Documentation: https://restcountries.eu/#sources
class Nation::NationGeneral
  def initialize(nation_name)
    @nation_name = " "
    case nation_name
    when "United_States", "United_States_Of_America"
      @nation_name = "USA"
    when "United_Kingdom"
      @nation_name = "UK"
    else
      @nation_name = nation_name
    end
  end

  def get_raw_data
    uri = URI.parse("https://restcountries.eu/rest/v2/name/#{@nation_name}?fullText=true")
    raw_data =  Net::HTTP.get(uri)

    extract_info(raw_data)
  end

  def extract_info(raw_data)
    json_info = JSON.parse(raw_data)
    to_hash = Hash[*json_info]
    to_hash.length

    raise "Country not avaliable" if to_hash.length == 1

    languages = to_hash["languages"].map{|k, v| k["name"]}
    # Structure of array [country_name, country_capital, country_continent, country_region,
    # country_population, country_languages]
    extracted_info = [to_hash["name"], to_hash["capital"], to_hash["region"], to_hash["subregion"], to_hash["population"], languages]

    extracted_info
  end
end
