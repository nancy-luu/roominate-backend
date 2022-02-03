class ListingPhotosController < ApplicationController

    def index
        listing_photo = ListingPhoto.all
        render json: photos 
    end 

    def show
        listing_photo = ListingPhoto.find(params[:id])
        render json: photo
    end

    def create 
        result = Cloudinary::Uploader.upload(params[:image])
        listing_photo = ListingPhoto.create(listing_id: listing.id, image: result['url'])
        if photo.save 
            render json: photo
        else 
            render json: photo.errors
        end 
    end 

end
