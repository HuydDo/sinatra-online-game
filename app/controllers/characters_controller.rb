class CharactersController < ApplicationController

 #index
  get "/characters" do
    if !Helpers.is_logged_in?(session)
      redirect to '/signup'
    else
     @user = Helpers.current_user(session)
     @characters = @user.characters
     # @characters = Helpers.current_user(session).characters
     erb :"characters/index"
    end    
  end
  
  #show all characters
  get "/characters/show_all" do
    if !Helpers.is_logged_in?(session)
      redirect to '/signup'
    else
      @characters = Character.all
      erb :"characters/index"
    end
  end

  #new
  get "/characters/new" do
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
    erb :"/characters/new"
  end

  #create
  post "/characters" do
    # user = Helpers.current_user(session)
    user = User.find_by_id(session[:user_id])
    # @c = user.characters.build(params)
    @c = Character.create(
      :name => params["name"], 
      :character_class => params["character_class"],
      :race => params["race"],
      :user_id => user.id)
    if @c.save
      redirect to "/characters"
    else 
      # redirect to "/characters/new"
      erb :"characters/new"
    end
  end
  
  #show
  get "/characters/:id" do
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
    @character = Character.find_by_id(params[:id])
    if @character
      erb :"characters/show"
    else
      redirect to "/characters"
    end
  end

  #edit
  get "/characters/:id/edit" do
    if !Helpers.is_logged_in?(session)
      redirect to "/login"
    end
  
    user = Character.find_by_id(params[:id]).user
    if user.id != Helpers.current_user(session).id
    # if Helpers.current_user(session).id != @character.user_id
      flash[:danger] = "You can only edit your own character!"
      redirect to "/characters"
    else
      @character = Character.find_by_id(params[:id])
      erb :"characters/edit"
    end
  end

  #update
  patch "/characters/:id" do
    user = Character.find_by_id(params[:id]).user
    if user.id == Helpers.current_user(session).id
      @character = Character.find_by_id(params[:id])

      if @character.update(:name => params["name"],
      :character_class => params["character_class"],
      :race => params["race"]
      )
        redirect to "/characters/#{@character.id}"
      else
        flash[:warning] = "Make sure all fields are entered correctly"
        redirect to "/characters/#{@character.id}/edit"
      end
    else
      erb :"/characters/index"
    end
  end
  
  #delete
  delete "/characters/:id" do
    if !Helpers.is_logged_in?(session)
      redirect to '/login'
    end
    @character = Character.find_by_id(params[:id])
    if Helpers.current_user(session).id != @character.user_id
      flash[:danger] = "You can only delete your own characters"
      redirect to '/characters'
    else
      Character.destroy(params[:id])
      redirect to "/characters"
    end
  end

end