class ListingPhotosController < ApplicationController
    before_action :find_listing, only: [:create]

    def show
        listing_photo = find_listing_photo
        render json: listing_photo
    end

    

    def create 
        result = Cloudinary::Uploader.upload(params[:image])
        listing_photo = ListingPhoto.find_by(listing_id: @listing.id)
     
        if listing_photo
            listing_photo.update(image: result['url'])
        else
            listing_photo = ListingPhoto.create(listing_id: listing.id, image: result['url'])
        end

        if listing_photo.save 
            render json: listing_photo
        else 
            render json: listing_photo.errors
        end 
    end 


    def update
        newListImage = Cloudinary::Uploader.upload(params[:image])
        listing_photo = find_listing_photo
        listing_photo.update!(listing_id: listing.id, image: newListImage['url'])
        render json: listing_photo, status: :ok
    end 

    private 

    def listing_photo_params 
        params.permit(:image, :listing_id)
    end

    def find_listing_photo
        ListingPhoto.find(params[:id])
    end

    def find_listing
        @listing = Listing.find_by(id: params['listing_id'])
    end
end
