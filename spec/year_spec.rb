require 'rspec'
require './lib/year.rb'

RSpec.describe Year do
  describe "#leap_year?" do
    context "when the year is divisible by 400" do
      it "returns true" do
        [400,1200,2000,4400].each do |year|
          y = Year.new(year)

          expect(y.leap_year?).to be true
        end
      end
    end

    context "when the year is divisible by 100, but NOT 400 " do
      it "returns false" do
        [100,500,1000,2200].each do |year|
          y = Year.new(year)

          expect(y.leap_year?).to be false
        end
      end
    end

    context "when the year is divisible by 4, but NOT 100" do
      it "returns true" do
        [1996,2004,2016,4444].each do |year|
          y = Year.new(year)

          expect(y.leap_year?).to be true
        end
      end
    end
  end
end
