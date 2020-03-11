Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      post 'coins/create', to: 'coins#create'
      patch 'coins/update/:id', to: 'coins#update'
      delete 'coins/delete/:id', to: 'coins#delete'
      get 'coins/all', to: 'coins#index'
      get 'coins/value', to: 'coins#total_value'
      get 'coins/:id', to: 'coins#show'

      
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
