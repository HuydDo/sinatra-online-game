class CharactersController < ApplicationController

  #Create
  get '/characters' do
    @characters = Character.all
    erb :'characters/index'
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