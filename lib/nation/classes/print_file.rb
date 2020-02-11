require_relative '../templates/html_file'
require_relative '../templates/json_file'

class PrintFile
  def self.print_nation_info(nation_object, ext_file)
    case ext_file
    when "html"
      HtmlFile.convert_html_file(nation_object) 
    when "json"
      JsonFile.convert_json_file(nation_object)
    else
      raise "File extention not supported yet. Extension #{ext_file}"
    end
  end
end