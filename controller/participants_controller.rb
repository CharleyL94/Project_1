require'pry-byebug'
require_relative('../models/athlete')
require_relative('../models/event')
require_relative('../models/nation')
require_relative('../models/participation')

get '/paticipants' do
  @paticipants = Participant.all()
  erb :'paticipants/index'
end

get '/participants/new' do
  @athletes = Athelete.all()
  @events = Event.all()
  @nations = Nation.all()
  erb :'participants/new'
end

post '/paticipants' do
  @participant = Participant.new(params) 
  @participant.save
  redirect to("participants")
end