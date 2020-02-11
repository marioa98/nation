Gem::Specification.new do |s|
  s.name = 'nation'
  s.version = '0.1.0'
  s.date = '2020-02-10'
  s.summary = "Nation"
  s.description = "A basic but useful country info extractor"
  s.authors = ["Mario Martinez"]
  s.email = 'mario1105mtz@gmail.com'
  s.files = ["lib/nation.rb", "lib/nation/basic_info.rb", "lib/nation/detailed_info.rb", 
    "lib/nation/classes/print_file.rb", "lib/nation/modules/get_info.rb", 
    "lib/nation/templates/html_file.rb", "lib/nation/templates/json_file.rb", "specs/nation_spec.rb"] 
    # Store the files used by the gem
  s.homepage = 'https://rubygems.org/gems/nation' 
  s.license = 'MIT' 
end
