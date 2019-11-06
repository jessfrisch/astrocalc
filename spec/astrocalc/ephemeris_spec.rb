require "spec_helper"

module Astrocalc
  describe Ephemeris do
    let(:date_place) { DatePlace.new(joan_date, joan_place) }
    let(:ephemeris) { described_class.new(date_place) }

    describe "#get_raw" do
      it "returns accurate SWE data for the requested celestial body" do
        expect(ephemeris.get_raw(joan_celestial_body)).to eq(joan_ephemeris)
      end
    end

    describe "#get_lon" do
      it "returns the correct longitude" do
        expect(ephemeris.get_lon(joan_celestial_body)).to eq(joan_eph_longitude)
      end
    end

    describe "#get_speed" do
      it "returns the correct speed" do
        expect(ephemeris.get_speed(joan_celestial_body)).to eq(joan_eph_speed)
      end
    end

    describe "#get_houses" do
      it "returns an array of house cusps" do
        expect(ephemeris.get_houses).to eq(joan_raw_houses)
      end
    end
  end
end
