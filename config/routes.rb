Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/readings" => "readings#index"
      get "/readings/:id" => "readings#show"
      post "/readings" => "readings#create"
      patch "/readings/:id" => "readings#update"
      delete "readings/:id" => "readings#destroy"
    end
    namespace :v2 do
      get "/readings" => "readings#index"
      get "/readings/:id" => "readings#show"
      post "/readings" => "readings#create"
      patch "/readings/:id" => "readings#update"
      delete "readings/:id" => "readings#destroy"
    end 
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
