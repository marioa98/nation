require 'minitest/autorun'
require_relative '../lib/nation/nation_general.rb'
require 'nation'

class NationTest < Minitest::Test
  def test_nation_general_response
    nation_general = NationGeneral.new("mexico")
    assert_equal ["Mexico", "Mexico City", "Americas", "Central America", 122273473, ["Spanish"]], nation_general.get_raw_data
  end
end

