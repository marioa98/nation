class Nation::HtmlFile
  def self.convert_html_file(json_object)
    path = "./nation_files/html" 
    file_name = "#{json_object[:name]}_info_#{Time.now.strftime("%d%m%Y%H%M")}"

    Dir.mkdir(path) if Dir.exist?(path) == false

    html = File.new("#{path}/#{file_name}.html", "w+")

    html.puts "<!DOCTYPE html>"
    html.puts "<html>"
    html.puts "<head>"
    html.puts "<title>#{file_name}</title>"
    html.puts "</head>"

    html.puts "<body>"
    json_object.each do |k, v|
      if k == "name"
        html.puts "<h1>#{v.upcase}</h1"
      else
        html.puts "<div><h3>#{k}</h3> <p>#{v}</p></div>"
      end
    end

    html.puts "</body>"
    html.puts "</html>"

    html.close()
  end
end
