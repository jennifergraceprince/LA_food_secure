class SessionsController < ApplicationController
    get '/newuser' do
        erb :'register/newuser'
    end

    post '/register' do
        @user = User.find_by(email: params[:email], password: params[:password])
        @user.save
        sessions[:user_id] = @user.id

        redirect '/users/home'
    end

    get '/login' do
        erb :'sessions/login'
    end

    post '/sessions' do
        @user = User.find_by(email: params[:email], password: params[:password])

    end


end
