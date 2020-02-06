# nation :earth_americas:

"nation" is a ruby gem generated during the Tango trainee program as a practice to improve the Ruby skills and get knowledge about the process to make a new gem

**Official site:** https://rubygems.org/gems/nation

## Installation

Via Git:
> git clone https://github.com/marioa98/nation.git

Via Gem :gem:
> gem install nation

## Brief info about the gem

nation appears as a gem that let you gather information about the countries around the world like:

- Name of the country.
- Capital of the country.
- Continent.
- Region.
- Language(s).
- About the country.

This could be useful for people who wants to develop something which includes world information or just to gather this information without access to many websites.

Could be useful for people who wants to develop something which includes world information or just to gather this information without access to many websites.

## Using the gem

Once that you have installed the gem you must to include it in your project

> require 'nation'

Because *nation* implements instance method, you must to create a new object to initialize the class (no paramethers needed)

> nation = Nation.new

Then, you can use the methods inside the main class *Nation* inside of the file nation.rb

## Methods

These all the methods inside of the *Nation* class. All of them delegates to the others classes inside of the gem, which are in charge of do the process

| Method name | Functionality | Files used | How to call it |
| ----------- | ------------- | ---------- | -------------- |
| nation_info | Gathers all the info about the country (the data mentioned in the list) | nation_general.rb and nation.info.rb | nation.nation_info(<country_name>) |
| info_to_json | Write a json file with the information collected and saved at the same level of the gem folder. You must to call first the nation_info method | json_file.rb | nation.info_to_json |
| info_to_html | Write a html file with the information collected and saved at the same level of the gem folder. You must to call first the nation_info method | html_file.rb 	 nation.info_to_html |


## API's used :electric_plug:

All the information gather in this gem is retrieved by

- Wikipedia API -> https://www.mediawiki.org/wiki/API:Main_page
- REST Country API -> https://restcountries.eu/#rest-countries

## Note about the gem :heavy_exclamation_mark:

This gem was a challenge of the Tango trainee program and was written in 6 hours aprox. so, part of this code could be hard-coded or could be a better way to implement this methods saying that, this gem is open to any member of the community and all of them can suggest changes or changes the file in your projects in the way that they want. But I really want that you make me know about the issues of the gem and ways to fix them :).
