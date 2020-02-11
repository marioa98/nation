require 'rspec'
require 'nation'

RSpec.describe Nation do
  describe 'nation_info' do
    it "returns a hash with the information gathering" do
      expect(Nation.new.nation_info("Mexico").class).to eq(Hash)
    end

    it "returns the correct information of the country" do
      expect(Nation.new.nation_info("Mexico").class).to eq(JSON.parse(File.open("./spec_files/mexico.json").read).class)
    end
  end
end
