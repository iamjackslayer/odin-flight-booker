Rails.application.routes.draw do


  root "flights#index"
  get 'flights/index' => "flights#index"

  get 'flights/create' => "flights#create"

  delete 'flights/destroy' => "flights#destroy"


  get 'bookings/new' => "bookings#new"
  post 'bookings/create' => "bookings#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
