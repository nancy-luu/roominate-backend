class AuthController < ApplicationController
    skip_before_action :require_login, only: [:login, :auto_login]

    # log in as an existing user
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          payload = {user_id: user.id}
          token = encode_token(payload)
          render json: {user: user, token: token, succes: "Welcome back, #{user.username}"}
        else
          render json: {error: "Invalid username or password!!!"}, status: :unprocessable_entity
        end
    end

    def auto_login
        if session_user
            render json: session_user, include: ['listings.listing_photo', 'user_photo', 'conversations', 'invoices']
        else
            render json: {errors: "No user logged in."}
        end
    end

    def user_is_authed
        render json: {message: "You are authorized"}
    end
end