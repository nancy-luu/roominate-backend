class UsersController < ApplicationController
    skip_before_action :require_login, only: [:test]

    def test
    end

    def index
        render json: User.all.order(created_at: :desc)
    end

    def show
        user=User.find(params[:id])
        render json: user
    end 

    def profile
        render json: {user: UserSerializer.new(session_user)}, status: :accepted
    end

    #POST /signup
    def create 
        @user=User.create(user_params)
          if @user.valid?
            #JWT sends the token here from Application Controller
            #Comment token and render out if raises an error
            token=encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: token} 
          else
            render json: {error: @user.errors.full_messages}, status: :not_acceptable
          end 
    end

    def update
        user = find_user
        user.update!(user_params)
        render json: user, status: :ok
    end

    private

    def user_params
        # The has_secure_password (Links to an external site.) method also provides two new instance methods on your User model: password and password_confirmation. These methods don't correspond to database columns! Instead, to make these methods work, your users table must have a password_digest column.
        params.permit(:username, :email, :password, :password_confirmation, :user_type, :user_desc, :user_location, :user_charge)
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_user
        User.find(params[:id])
    end

    def record_not_found
        render json: {error: "User not found"}, status: :not_found 
    end
end
