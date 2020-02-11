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

# require './nation/nation_general'
# require './nation/nation_info'
# require './nation/templates/json_file'
# require './nation/templates/html_file'

# class Nation

#   def initialize
#     @stored_info = {}
#   end

#   def nation_info(nation_name)
#     nation_name = nation_name.downcase.split.map(&:capitalize).join("_")
#     general = NationGeneral.new(nation_name)
#     nation_general = general.get_raw_data 

#     info = NationInfo.new(nation_name)
#     info_country = info.get_raw_data

#      @stored_info = {:name => nation_general[0], :capital => nation_general[1], :continent => nation_general[2], :region => nation_general[3], :population => nation_general[4], :languages => nation_general[5], :about_country => info_country}

#   end

#   def info_to_json
#     JsonFile.convert_json_file(@stored_info)    
#   end

#   def info_to_html
#     HtmlFile.convert_html_file(@stored_info)
#   end
# end
