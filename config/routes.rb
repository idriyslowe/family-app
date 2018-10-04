Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'people#index'
  post '/records' => 'people#create'
  get '/records/gender' => 'people#gender'
  get '/records/birthdate' => 'people#birthdate'
  get '/records/name' => 'people#name'

end