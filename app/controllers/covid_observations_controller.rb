class CovidObservationsController < ApplicationController

	def confirmed
		date = params[:observation_date] ? 
			DateTime.parse(params[:observation_date]) : DateTime.now
		count = params[:max_results] ? params[:max_results] : 0
		confirmed = CovidObservation.confirmed(date, count)

		render json: {
			observation_date: params[:observation_date],
			countries: confirmed
		}
	end
end
