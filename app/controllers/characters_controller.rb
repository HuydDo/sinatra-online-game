class CharactersController < ApplicationController

 #index
  get '/characters' do
    @characters = Character.all
    erb :'characters/index'
  end
  
  #new
  get '/characters/new' do
    erb :'/characters/new'
  end

  #create
  post '/characters' do
    # binding.pry
    # user = Helpers.current_user(session)
    character = Character.create(
      :name => params["name"], 
      :character_class => params["character_class"], 
      :race => params["race"])
      # :user_id => user.id)
    if character.save
      redirect to '/characters'
    else 
      redirect to '/characters/new'
    end
  end

  
  #show
  get '/characters/:id' do
    @character = Character.find(params[:id])

    erb :'characters/show'
  end

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