class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        render json: Review.all
    end

    def create 
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    def destroy
        review = find_review
        review.destroy!
        head :no_content
    end

   
    private 

    def review_params
        params.permit(:message, :reviewer_id, :user_review)
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_review
        Review.find(params[:id])
    end

    def render_not_found
        render json: {error: "Review not found"}, status: :not_found
    end

end
