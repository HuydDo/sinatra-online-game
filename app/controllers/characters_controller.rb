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