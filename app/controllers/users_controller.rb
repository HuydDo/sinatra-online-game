class UsersController < ApplicationController
 
  get '/signup' do
    erb :"/users/new"
  end

  post '/signup' do
    @user = User.create(:username => params["username"], :email => params["email"], :password => params["password"])
    if @user.save
      session[:user_id] = @user.id
      redirect to "/characters"
    else
     erb :"/users/new"
    end
  end

  get '/login' do
    if Helpers.is_logged_in?(session)
      redirect to '/characters'
    end
    erb  :"/users/login"
  end

  post '/login' do
    user = User.find_by(:username => params["username"])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/characters'
    else
      redirect to '/login'
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