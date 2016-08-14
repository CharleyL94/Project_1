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

post '/athletes' do
  @athlete = Athlete.new(params)
  @athlete.save
  redirect to("athletes")
end

post '/athletes/:id' do
end

delete '/athletes' do
end

