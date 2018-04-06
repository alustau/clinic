Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/doctors', to: 'doctor#index', as: 'doctor-index'

  get '/doctor/form', to: 'doctor#form', as: 'doctor-form'
end
