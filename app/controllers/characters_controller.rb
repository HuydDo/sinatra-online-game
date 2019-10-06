class CharactersController < ApplicationController

  #Index
  get '/characters' do
    @characters = Character.all
    erb :'characters/index'
  end
  
  #Create
  get '/characters/new' do
    erb :'/characters/new'
  end

  post '/characters' do
    user = current_user(session)
    character = Character.create(
      :name => params["name"], 
      :class => params["class"], 
      :race => params["race"], 
      :user_id => user.id)
    redirect to '/characters'
  end
  #Read
  #Update
  #Delete


  #index
  #new
  #create
  #show
  #edit
  #update
  #delete
end