Rails.application.routes.draw do
	get '/top/confirmed', to: 'covid_observations#confirmed'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root :to => redirect("/top/confirmed")
end
