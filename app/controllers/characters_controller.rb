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
    user = Helpers.current_user(session)
    character = Character.create(
      :name => params["name"], 
      :class => params["class"], 
      :race => params["race"], 
      :user_id => user.id)
    
    if character.save
      redirect to '/characters'
    else 
      redirect to '/characters/new'
    end
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