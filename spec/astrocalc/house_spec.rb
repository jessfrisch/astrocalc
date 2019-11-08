require "spec_helper"

module Astrocalc
  describe House do
    let(:test) { DATA }
    let(:date_place) { DatePlace.new(test.date, test.place) }
    let(:chart) { Chart.new(date_place) }
    let(:house) { described_class.new(chart) }

    describe "#houses_raw" do
      it "returns the ephemeris data for the house cusps" do
        expect(house.houses_raw).to eq(test.example_houses_raw)
      end
    end

    describe "#house" do
      context "given a valid number" do
        it "returns the sign and position for that cusp" do
          expect(house.house(1)).to eq(test.example_house)
        end
      end
    end

    describe "#houses" do
      it "returns an array of sign positions of the cusps" do
        expect(house.houses).to eq(test.example_houses)
      end
    end

    describe "#ascendant" do
      it "returns an array of the AC sign and position" do
        expect(house.ascendant).to eq(house.houses[1])
      end
    end

    describe "#asc" do
      it "returns an array of the AC sign and position" do
        expect(house.asc).to eq(house.houses[1])
      end
    end

    describe "#ac" do
      it "returns an array of the AC sign and position" do
        expect(house.ac).to eq(house.houses[1])
      end
    end

    describe "#imum_coeli" do
      it "returns an array of the IC sign and position" do
        expect(house.imum_coeli).to eq(house.houses[4])
      end
    end

    describe "#ic" do
      it "returns an array of the IC sign and position" do
        expect(house.ic).to eq(house.houses[4])
      end
    end

    describe "#descendant" do
      it "returns an array of the DESC sign and position" do
        expect(house.descendant).to eq(house.houses[7])
      end
    end

    describe "#desc" do
      it "returns an array of the Desc sign and position" do
        expect(house.desc).to eq(house.houses[7])
      end
    end

    describe "#midheaven" do
      it "returns an array of the MC sign and position" do
        expect(house.midheaven).to eq(house.houses[10])
      end
    end

    describe "#mc" do
      it "returns an array of the MC sign and position" do
        expect(house.mc).to eq(house.houses[10])
      end
    end
  end
end
