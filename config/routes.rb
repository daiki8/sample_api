Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/timecards', to: 'time_cards#index'
  post '/timecards', to: 'time_cards#create'
  get '/timecards/:id', to: 'time_cards#show'
end
