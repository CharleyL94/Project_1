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
end

get '/events/:id/edit' do
  end

post '/events' do
  @event = Event.new(params)
  @event.save
  redirect to("events")
end

post '/events/:id' do
end

delete '/events' do
  end