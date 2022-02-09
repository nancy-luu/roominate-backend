class UserPhotosController < ApplicationController
    # rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found     

    def show
        user_photo = UserPhoto.find(params[:id])
        render json: user_photo
    end

    def create 
        result = Cloudinary::Uploader.upload(params[:image])
        user_photo = UserPhoto.create(user_id: current_user.id, image: result['url'])
        if photo.save 
            render json: user_photo
        else 
            render json: user_photo.errors
        end 
    end 

    def update 
        userphoto = find_userphoto
        userphoto.update!(userphoto_params)
        render json: userphoto
    end 

    private 

    def userphoto_params 
        params.permit(:image, :user_id)
    end

    # def record_invalid(invalid)
    #     render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    # end

    def find_userphoto
        UserPhoto.find(params[:id])
    end 

    # def render_not_found
    #     render json: { error: "User Photo not found" }, status: :not_found
    # end

end
