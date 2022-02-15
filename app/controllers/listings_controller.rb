class ListingsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found     
    
    def index
        render json: Listing.all.order(created_at: :desc), include: ['listing_photo']
    end 

    def featured_listings
        random_listing = Listing.find(Listing.pluck(:id).sample(4))
        render json: random_listing, include: ['listing_photo']
    end

    def create 
        listing = Listing.create!(listing_params)
        render json: listing, status: :created
    end 

    def show 
        listing = find_listing
        render json: listing, status: :ok
    end 

    def update 
        listing = find_listing
        listing.update!(listing_params)
        render json: listing
    end 

    def destroy 
        listing = find_listing
        listing.destroy!
        head :no_content
    end

    private

    def listing_params
        params.permit(:title, :category, :location, :price, :desc, :user_id)
    end 

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_listing 
        Listing.find(params[:id])
    end 


    def render_not_found
        render json: { error: "Listing not found" }, status: :not_found
    end

end
