class UserPhotosController < ApplicationController

    def show
        user_photo = UserPhoto.find(params[:id])
        render json: photo
    end

    def create 
        result = Cloudinary::Uploader.upload(params[:image])
        user_photo = UserPhoto.create(user_id: current_user.id, image: result['url'])
        if photo.save 
            render json: photo
        else 
            render json: photo.errors
        end 
    end 

end
