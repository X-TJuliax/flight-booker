Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'flights#index'

  resources :flights
  resources :bookings
  # get 'new_booking', to: 'bookings#new', as: 'new_booking'

  
end
