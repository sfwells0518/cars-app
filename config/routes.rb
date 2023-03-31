Rails.application.routes.draw do
  get "/cars" => "cars#index"
  get "/cars/:id" => "cars#show"
  post "/cars" => "cars#create"
  patch "/cars/:id" => "cars#update"
  delete "/cars/:id" => "cars#destroy"
end
