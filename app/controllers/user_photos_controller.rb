class UserPhotosController < ApplicationController
    
    def index
        render json: UserPhoto.all
    end

    def show
        user_photo = UserPhoto.find(params[:id])
        render json: user_photo
    end

    def create
        result = Cloudinary::Uploader.upload(params[:image])
        user_photo = UserPhoto.find_by(user_id: session_user.id)

        if user_photo
            user_photo.update(image: result['url'])
        else
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

    private 

    def userphoto_params 
        params.permit(:image, :user_id)
    end

    def find_userphoto
        UserPhoto.find(params[:id])
    end 

end
