class RegistrationsController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def create
        user = User.create!(
        name: params["name"],
        username: params["username"],
        email: params["email"],
        password: params["password"],
        password_confirmation: params["password_confirmation"]
        )
        if user
            session[:user_id] = user.id
            render json: { 
                status: :created,
                user: user
            }
        else
            render json: { status: 500 }
        end
    end
end