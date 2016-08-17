require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controller/athletes_controller')
require_relative('controller/events_controller')
require_relative('controller/nations_controller')

get '/' do
  erb :home
end