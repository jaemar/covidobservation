class CovidObservationsController < ApplicationController

	def confirmed
		parsed_date = params[:observation_date] ? DateTime.parse(params[:observation_date]) : DateTime.now
		confirmed = CovidObservation
			.observation_date(parsed_date)
			.top(params[:max_results] ? params[:max_results].to_i : 0)
		render json: {
			observation_date: params[:observation_date],
			countries: confirmed
		}
	end
end
