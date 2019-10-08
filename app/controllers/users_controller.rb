class UsersController < ApplicationController
 
  get '/signup' do
    erb :"/users/new"
  end

  post '/signup' do
    user = User.create(:username => params["username"], :email => params["email"], :password => params["password"])
    if user.save
      session[:user_id] = user.id
      redirect to "/characters"
    else
     erb :"/users/new"
    end
  end


end