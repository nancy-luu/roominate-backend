class ConversationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index 
        render json: Conversation.all
    end

    def show
        render json: Conversation.where(user_1: @current_user).or(user_2: @current_user).order(created_at: :desc)
    end

    # def show
    #     conversation = find_conversation
    #     render json: conversation, status: :ok
    # end

    def message_count
        conversation = find_conversation
        render json: conversation.messages.count
    end

    def create 
        conversation = Conversation.create!(conversation_params)
        render json: conversation, status: :created
    end

    def destroy
        conversation = find_conversation
        conversation.destroy!
        head :no_content
    end

    private 

    def conversation_params 
        params.permit(:header, :user_id, :user2_id)
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_conversation
        Conversation.find(params[:id])
    end

    def render_not_found
        render json: {error: 'Conversation not Found'}, status: :not_found
    end

end
