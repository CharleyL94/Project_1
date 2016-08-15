require( 'sinatra' )
require_relative('controller/athletes_controller')
require_relative('controller/events_controller')
require_relative('controller/nations_controller')
require_relative('controller/participants_controller')

get '/' do
  erb :home
end