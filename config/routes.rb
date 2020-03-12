Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      get '/coins', to: 'coins#index'
      post '/coins/new', to: 'coins#create'
      patch '/coins/update/:id', to: 'coins#update'
      delete '/coins/delete/:id', to: 'coins#delete'
      get '/coins/value', to: 'coins#total_value'
      get '/coins/:id', to: 'coins#show'

      get '/transactions/', to: 'transactions#index'
      post '/transactions/deposit', to: 'transactions#deposit'
      post '/transactions/withdrawal', to: 'transactions#withdrawal'
      get '/transactions/user/:id', to: 'transactions#user_transactions'

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
