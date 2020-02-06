require 'net/http'
require 'json'

# API Documentation: https://www.mediawiki.org/wiki/API:Main_page
class Nation::NationInfo
  def initialize(nation_name)
    @nation_name = nation_name
  end

  def get_raw_data
    uri = URI.parse("https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts&titles=#{@nation_name}&formatversion=2&exsentences=10&exlimit=1&explaintext=1")
    raw_data = JSON.parse(Net::HTTP.get(uri))

    extract_info(raw_data)
  end

  def extract_info(raw_data)
    hash_data = Hash[*raw_data]

#   raise "Country not avaliable" if raise_error_field[0]["fromencoded"] == false

    weird_hash = hash_data[["batchcomplete", true]]
    weird_hash =  weird_hash[1]["pages"] || weird_hash[0]["pages"]
    weird_hash = Hash[*weird_hash]

    country_info = weird_hash["extract"]

    country_info
  end
end
