class UsersController < ApplicationController
 
  get '/signup' do
    erb :"/users/new"
  end

  post '/signup' do
    # binding.pry
    @user = User.create(:username => params["username"], :email => params["email"], :password => params["password"])
    # @user = User.new(params)
    if @user.save
      session[:user_id] = @user.id
      redirect to "/characters"
    else
     erb :"/users/new"
    end
  end

  get '/logout' do
    if Helpers.is_logged_in?(session)
      session.destroy
      redirect to "/login"
    else
      redirect to "/"
    end
  end


end