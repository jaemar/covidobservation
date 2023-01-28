require "rails_helper"
require "csv"

RSpec.describe CovidObservation, :type => :model do
	before(:all) do
		CovidObservation.import_data("app/assets/covid_19_data.csv")
	end

	context "importing data from csv" do
		it "should grouped by country and summation" do
			observations = CovidObservation.first
			expect(observations).to be_present
		end
	end

	context "Mainland China 2020-01-22" do
		it "it should have a total of 547 confirmed" do
			observation = CovidObservation
				.observation_date(DateTime.parse("2020-01-22"))
				.top(1)
				.first
			expect(observation.confirmed).to eq(547)
		end

		it "it should have a total of 17 deaths" do
			observation = CovidObservation
				.observation_date(DateTime.parse("2020-01-22"))
				.top(1)
				.first
			expect(observation.deaths).to eq(17)
		end

		it "it should have a total of 28 recovered" do
			observation = CovidObservation
				.observation_date(DateTime.parse("2020-01-22"))
				.top(1)
				.first
			expect(observation.recovered).to eq(28)
		end
	end
end
