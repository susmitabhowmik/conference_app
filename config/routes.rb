Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do 
    get "/speakers" => "speakers#index"
    get "/speakers/:id" => "speakers#show"
    get "/meetings" => "meetings#index"
    get "/meetings/:id" => "meetings#show"
    post "/speakers/create" => "speakers#create"
  end
end
