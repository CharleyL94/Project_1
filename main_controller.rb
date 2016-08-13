require( 'sinatra' )
require_relative('controllers/athletes_controller')
require_relative('controllers/events_controller')
require_relative('controllers/nations_controller')
require_relative('controllers/participants_controller')

get '/' do
  erb :home
end