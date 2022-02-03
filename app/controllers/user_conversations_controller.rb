class UserConversationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def create
        userConversation = UserConversation.create!(userConversation_params)
        render json: userConversation, status: :created
    end

    def destroy
        userConversation = UserConversation.find_by(user_id:@current_user.id, conversation_id:params[:id])
        userConversation.destroy!
        head :no_content
    end

    private

    def userConversation_params
        params.permit(:user_id, :conversation_id)
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
