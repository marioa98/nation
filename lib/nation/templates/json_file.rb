require 'json'

class Nation::JsonFile
  def self.convert_json_file(json_object)

    path = "./nation_files/json" 
    file_name = "#{json_object[:name]}_info_#{Time.now.strftime("%d%m%Y%H%M")}.json"
    Dir.mkdir(path) if Dir.exist?(path) == false

    File.open("#{path}/#{file_name}", "w") do |f|
      f.write(json_object.to_json)
    end
  end
end
