require_relative('../models/athlete')

get '/athletes' do
  @athlete = Athlete.all
  erb(:'athletes/index')
end

get '/athletes/new' do
  erb(:'athletes/new')
end

get 'athletes/:id' do
  @athlete = Athlete.find(params["id"])
  erb(:'athletes/show')
end

get '/athletes/:id/edit' do
end



