require_relative('../models/nation.rb')

get '/nations' do
  @nations = Nation.all()
  erb :'events/index'
end

get '/nations/new' do
  erb :'events/new'
end

get '/nations/:id' do
  @nation = Nation.find(params["id"])
  erb(:'nations/show')
end

  get '/nations/:id/edit' do
  end

  get '/nations/:id/edit' do
  end

  post '/nations' do
    @nation = Nation.new(params)
    @nation.save
    redirect to("nations")
  end

  post '/nations/:id' do
  end

  delete '/nations' do
  end