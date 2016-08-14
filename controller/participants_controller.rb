require'pry-byebug'
require_relative('../models/athlete')
require_relative('../models/event')
require_relative('../models/nation')
require_relative('../models/participation')

get '/paticipants' do
  @paticipants = Participant.all()
  erb :'paticipants/index'
end

