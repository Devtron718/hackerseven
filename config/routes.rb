Rails.application.routes.draw do
  post '/b' => "breaches#create", format: :json
  post '/attack' => "attacks#create", format: :json
end
