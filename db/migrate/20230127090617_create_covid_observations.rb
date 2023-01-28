class CreateCovidObservations < ActiveRecord::Migration[7.0]
  def change
    create_table :covid_observations, id: false do |t|
			t.string  :country
			t.date    :observation_date
      t.integer :confirmed
      t.integer :deaths
      t.integer :recovered
    end

		add_index :covid_observations, [:country, :observation_date], unique: true
  end
end
