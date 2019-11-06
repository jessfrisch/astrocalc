require "spec_helper"

module Astrocalc
  describe CelestialBody do
    let(:date_place) { DatePlace.new(joan_date, joan_place) }

    context "when given an invalid name" do
      it "raises an error" do
        expect { CelestialBody.new("Cheese", date_place) }.to raise_error("Invalid name")
      end
    end

    let(:cb) { described_class.new("Sun", date_place) }

    describe "#sign" do
      it "returns the correct sign as a string" do
        expect(cb.sign).to eq(joan_sun_sign)
      end
    end

    describe "#degree" do
      it "returns the correct degree" do
        expect(cb.degree).to eq(joan_sun_degree)
      end
    end

    describe "#minute" do
      it "returns the correct minute" do
        expect(cb.minute).to eq(joan_sun_minute)
      end
    end
  end
end
