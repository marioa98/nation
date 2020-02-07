class Nation

  def initialize
    @stored_info = {}
  end

  def nation_info(nation_name)
    nation_name = nation_name.downcase.split.map(&:capitalize).join("_")
    general = NationGeneral.new(nation_name)
    nation_general = general.get_raw_data 

    info = NationInfo.new(nation_name)
    info_country = info.get_raw_data

     @stored_info = {:name => nation_general[0], :capital => nation_general[1], :continent => nation_general[2], :region => nation_general[3], :population => nation_general[4], :languages => nation_general[5], :about_country => info_country}

     @stored_info

  end

  def info_to_json
    JsonFile.convert_json_file(@stored_info)    
  end

  def info_to_html
    HtmlFile.convert_html_file(@stored_info)
  end
end

require './nation/nation_general'
require './nation/nation_info'
require './nation/templates/json_file'
require './nation/templates/html_file'
