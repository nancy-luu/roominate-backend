class UserReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def show 
        user_review = UserReview.find(params[:id])
        render json: user_review
    end

    def create 
        userReview = UserReview.create!(userReview_params)
        render json: userReview, status: :created
    end

    def destroy
        userReview = UserReview.find_by(user_id:@current_user.id, review_id:params[:id])
        userReview.destroy!
        head :no_content
    end

    private

    def userReview_params
        params.permit(:user_id, :review_id)
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
