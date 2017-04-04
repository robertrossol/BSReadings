Rails.application.routes.draw do
  get "/readings" => "readings#index"
  get "/readings/:id" => "readings#show"
  post "/readings" => "readings#create"
  patch "/readings/:id" => "readings#update"
  delete "readings/:id" => "readings#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
