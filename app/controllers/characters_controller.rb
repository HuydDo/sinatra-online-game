class CharactersController < ApplicationController

 #index
  get "/characters" do
    @characters = Character.all
    erb :"characters/index"
  end
  
  #new
  get "/characters/new" do
    erb :"/characters/new"
  end

  #create
  post "/characters" do
    # binding.pry
    # user = Helpers.current_user(session)
    character = Character.create(
      :name => params["name"], 
      :character_class => params["character_class"], 
      :race => params["race"])
      # :user_id => user.id)
    if character.save
      redirect to "/characters"
    else 
      redirect to "/characters/new"
    end
  end

  
  #show
  get "/characters/:id" do
    @character = Character.find_by_id(params[:id])

    if @character
      erb :"characters/show"
    else
      redirect to "/characters"
    end
  end

  #edit
  get "/characters/:id/edit" do
    @character = Character.find_by_id(params[:id])
    erb :"characters/edit"
  end

  #update
  patch "/characters/:id" do
    character = Character.find_by_id(params[:id])
   
    if character.update(:name => params["name"],
    :character_class => params["character_class"],
    :race => params["race"]
    )
      redirect to "/characters/#{character.id}"
    else
      redirect to "/characters/#{character.id}/edit"
    end
   end
  
   #delete
   delete "/characters/:id" do
    Character.destroy(params[:id])
    redirect to "/characters"

   end

  #Create
  #Read
  #Update
  #Delete

 end