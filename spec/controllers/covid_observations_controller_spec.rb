require "rails_helper"

RSpec.describe CovidObservationsController, type: :controller do
	it "responds json format" do
		params = {observation_date: "2020-01-22", max_results: 2, format: :json}
		get :confirmed, params: params

		expect(response.media_type).to eq("application/json")
	end

	it "responds successfully" do
		params = {observation_date: "2020-01-22", max_results: 2, format: :json}
		get :confirmed, params: params

		expect(response.status).to eq(200)
	end
end
