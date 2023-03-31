Rails.application.routes.draw do
  get "/cars" => "cars#index"
  get "/cars/:id" => "cars#show"
  post "/cars" => "cars#create"
  # patch
  # delete
end
