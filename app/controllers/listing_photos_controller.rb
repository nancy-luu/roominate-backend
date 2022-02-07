class ListingPhotosController < ApplicationController

    def show
        listing_photo = find_listing_photo
        render json: listing_photo
    end

    def update
        listing_photo = find_listing_photo
        listing_photo.update!(listing_photo_params )
        render json: user, status: :ok
    end 

    def create 
        result = Cloudinary::Uploader.upload(params[:image])
        listing_photo = ListingPhoto.create(listing_id: listing.id, image: result['url'])
        if photo.save 
            render json: listing_photo
        else 
            render json: listing_photo.errors
        end 
    end 

    private 

    def listing_photo_params 
        params.permit(:image, :listing_id)
    end

    def find_listing_photo
        ListingPhoto.find(params[:id])
    end

end
