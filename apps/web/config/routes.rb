# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

resources :albums, only: [:index, :new, :create]

get '/about', to: 'pages#about', as: :about

root to: 'home#index'
