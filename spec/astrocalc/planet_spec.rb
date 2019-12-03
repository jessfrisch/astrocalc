require "spec_helper"

module Astrocalc
  describe Planet do
    let(:test) { DATA }
    let(:chart) { Chart.new(test.date, test.place) }
    let(:planet) { described_class.new(chart, test.example_planet) }

    describe "#position_raw" do
      context "when given a valid planet name" do
        it "returns the ephemeris data for that planet and chart" do
          expect(planet.position_raw).to eq(test.example_planet_raw)
        end
      end
    end

    describe "#position" do
      context "when given a valid planet name" do
        it "returns the sign, degree, minute, and retrograde as an array" do
          expect(planet.position).to eq(test.example_planet_position) 
        end
      end
    end

    describe "#house" do
      context "when given a valid planet name" do

        context "when given no house system" do
          it "returns the appropriate placidus house" do
            expect(planet.house).to eq(test.example_planet_house)
          end
        end

        context "when given a house system" do
          it "returns the appropriate house system house" do
            expect(planet.house).to eq(test.example_planet_house_w)
          end
        end

      end
    end

  end
end
