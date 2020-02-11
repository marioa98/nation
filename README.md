# nation :earth_americas:

"nation" is a ruby gem generated during the Tango trainee program as a practice to improve the Ruby skills and get knowledge about the process to make a new gem.

**Official site:** https://rubygems.org/gems/nation.

**Version:** 0.1.0.

## Installation

Via Git:

` git clone https://github.com/marioa98/nation.git `

Via Gem :gem:

` gem install nation `

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

` require 'nation' `

Then, you must to create an instance of the main class (*Nation* in nation.rb) inside of your project and call the methods that you want.

``` 
nation = Nation.new("Mexico")
nation.get_info # Gets the info of the country choosen and store the information in a Hash.
nation.print_file(<hash_object>, <file_extension>) # For now just json and html extension supported.

```

## Methods



## API's used :electric_plug:

All the information gather in this gem is retrieved by

- Wikipedia API -> https://www.mediawiki.org/wiki/API:Main_page
- REST Country API -> https://restcountries.eu/#rest-countries

## Note about the gem :heavy_exclamation_mark:

This gem was a challenge of the Tango trainee program and was written in 6 hours aprox. so, part of this code could be hard-coded or could be a better way to implement this methods saying that, this gem is open to any member of the community and all of them can suggest changes or changes the file in your projects in the way that they want. But I really want that you make me know about the issues of the gem and ways to fix them :).
