# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

root to: 'home#index'

get '/albums', to: 'albums#index'
get '/albums/new', to: 'albums#new'
post '/albums', to: 'albums#create'
