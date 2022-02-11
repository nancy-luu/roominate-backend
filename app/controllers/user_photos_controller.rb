class UserPhotosController < ApplicationController
    # rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found     

    def show
        user_photo = UserPhoto.find(params[:id])
        render json: user_photo
    end

    def create
        result = Cloudinary::Uploader.upload(params[:image])
        user_photo = UserPhoto.find_by(user_id: session_user.id)

        if user_photo # if there is already a user photo swap out image url
            user_photo.update(image: result['url'])
            # delete the old profile if there is one
        else # need to create user photo
            user_photo = UserPhoto.create(user_id: session_user.id, image: result['url'])
        end

        if user_photo.save 
            render json: user_photo
        else 
            render json: user_photo.errors
        end 
    end 

    def update 
        newImage = Cloudinary::Uploader.upload(params[:image])
        byebug
        userphoto = find_userphoto
        userphoto.update!(user_id: current_user.id, image: newImage['url'])
        render json: userphoto
    end 

    # def update_profile_image
    #     current_user = User.find_by(:id => params[:id])
    #     upload_image = Cloudinary::Uploader.upload(params["image_url"])
    #     user = { image_url: upload_image["url"] }
    #     begin
    #         current_user.update!(user)
    #         render json: { url: upload_image["url"] }, status: :ok
    #     rescue => exception
    #         render json: exception, status: :bad_request
    #     end
    # end

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
