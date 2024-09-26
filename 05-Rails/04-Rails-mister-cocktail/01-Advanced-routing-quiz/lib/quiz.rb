def restaurants_resources_routes
  return RoutesSet.draw do
    get '/restaurants', to: 'restaurants#index'
    get '/restaurants/new', to: 'restaurants#new'
    post '/restaurants', to: 'restaurants#create'
    get '/restaurants/:id', to: 'restaurants#show'
    get '/restaurants/:id/edit', to: 'restaurants#edit'
    patch '/restaurants/:id', to: 'restaurants#update'
    delete '/restaurants/:id', to: 'restaurants#destroy'
  end
end

def nested_routes_for_one_to_many?
  return false
end

def validate_name
  return "validates :name, presence: true"
end
