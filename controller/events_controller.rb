require_relative('../models/event.rb')

get '/events' do
  @event = Event.all()
  erb(:'events/index')
end

get '/events/new' do
  erb :'events/new'
end

get '/events/:id' do
  @event = Event.find(params["id"])
  erb :'events/show'
