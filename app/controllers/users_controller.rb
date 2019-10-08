class UsersController < ApplicationController
 
  get '/signup' do
    erb :"/users/new"
  end

  post '/signup' do
    msg = [] 
    @user = User.create(:username => params["username"], :email => params["email"], :password => params["password"])
    if @user.save
      session[:user_id] = @user.id
      redirect to "/characters"
    else
     
      params.each do |key, value|
        # binding.pry 
        if value.empty?
          msg << key.to_s
          
          # flash[:new_user_error] = "Please enter a value for #{key}"
          # redirect to :"users/new"
        end
      end
      msg.flatten
      flash[:new_user_error] = "Please enter a value for #{msg}"
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