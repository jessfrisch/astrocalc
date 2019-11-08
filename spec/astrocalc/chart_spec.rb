require "spec_helper"

module Astrocalc
  describe Chart do
    let(:test) { DATA }

    let(:date_place) { DatePlace.new(test.date, test.place) }
    let(:chart) { described_class.new(date_place) }

    describe "#planet_raw" do
      context "when given a valid planet name" do
        it "retrieves raw ephemeris data for the planet and chart time" do
          expect(chart.planet_raw(test.example_planet)).to eq(test.example_planet_raw)
        end
      end
    end

    describe "#planet_positions" do
      it "returns an array of planets, degrees, and minutes" do
        expect(chart.planet_positions).to eq(test.example_planet_positions)
      end
    end

    describe "#houses_raw" do
      it "returns raw ephemeris data with house cusps" do
        expect(chart.houses_raw).to eq(test.example_houses_raw)
      end
    end

    describe "#houses" do
      it "returns an array of sign positions of the cusps" do
        expect(chart.houses).to eq(test.example_houses)
      end
    end

    describe "#aspects" do
      it "returns an array of all planetary aspects" do
        expect(chart.aspects).to eq(test.example_aspects)
      end
    end
  end
end
