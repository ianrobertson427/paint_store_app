Rails.application.routes.draw do
  namespace :api do
    get "/paints" => "paints#index"
    get "/paints/:id" => "paints#show"
    post "/paints" => "paints#create"
    patch "/paints/:id" => "paints#update"
    delete "/paints/:id" => "paints#destroy"
    post "/users" => "users#create"
  end
end
