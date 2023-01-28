class CovidObservation < ApplicationRecord
	default_scope { select(:country, :confirmed, :deaths, :recovered) }

	scope :top, -> (max_results) { limit(max_results) }
	scope :observation_date, -> (date) {
		where(observation_date: date).order('confirmed DESC') 
	}

	validates :country, uniqueness: { scope: :observation_date }


	# Return all neccessary scoped attributes
	def self.confirmed(date, count)
		self.observation_date(date).top(count)
	end

	# This will insert all the data that's been processed and grouped base on ObservationDate and Country/Region
	def self.import_data(path)
		if self.table_exists?
			# grouped all data by country
			grouped = {}	
			csv = CSV.read(path, headers: true)
			csv.each do |row|
				country = row["Country/Region"].strip
				observation_date = DateTime.strptime(row["ObservationDate"], "%m/%d/%Y")
				confirmed = row["Confirmed"].to_i
				deaths = row["Deaths"].to_i
				recovered = row["Recovered"].to_i

				country_date = "#{country} - #{observation_date}"

				if grouped[country_date]
					grouped[country_date][:confirmed] += confirmed||0
					grouped[country_date][:deaths] += deaths||0
					grouped[country_date][:recovered] += recovered||0
				else
					grouped[country_date] = {
						country: country,
						observation_date: observation_date,
						confirmed: confirmed,
						deaths: deaths,
						recovered: recovered}
				end
			end

			# Insert all record at once
			self.insert_all(grouped.map{|k, v| v})			
		end
	end

end
