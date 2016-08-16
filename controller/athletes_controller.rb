require_relative('../models/athlete')

get '/athletes' do
  @athletes = Athlete.all()
  erb(:'athletes/index')
end

get '/athletes/new' do 
  # @athlete = Athlete.all()
  @nations = Nation.all()
  erb(:'athletes/new')
end

get '/athletes/:id/edit' do
  @athlete = Athlete.find(params[:id])
  @nations = Nation.all
  erb(:'athletes/edit')
end

get '/athletes/:id' do
  @athlete = Athlete.find(params['id'])
  erb(:'athletes/show')
end

post '/athletes' do
  @athlete = Athlete.new(params)
  @athlete.save
  redirect to("/athletes")
end

post '/athletes/:id' do
end

delete '/athletes/:id/delete' do
  @athlete = Athle.find(params[:id])
  @athlete.delete
  redirect(to('/athletes'))
end

