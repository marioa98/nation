require 'net/http'
require 'json'
require './nation/basic_info'
require './nation/detailed_info'
require_relative'./nation/classes/print_file'

class Nation
  def initialize(nation_name)
    @nation_info = {}
    @nation_name = nation_name
    @nation_code = standarize(nation_name)
  end

  def get_info
    basic_info = BasicInfo.new.get(@nation_code)
    detailed_info = DetailedInfo.new.get(@nation_name)

    @nation_info = basic_info.merge(detailed_info)
  end

  def print_file(ext_file)
    PrintFile.print_nation_info(@nation_info, ext_file)
  end
  
  private 
  def standarize(full_name)
    uri = URI.parse("http://country.io/names.json")
    response = Net::HTTP.get(uri)

    nation_code = JSON.parse(response).select{|k, v| v == full_name}.keys[0]
  end

end