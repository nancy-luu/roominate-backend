class ConversationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index 
        render json: Conversation.all
    end

    def my_conversations
        my_conversations = Conversation.where(user_id: session_user.id).or(Conversation.where(user2_id: session_user.id))
        ordered_conversation = my_conversations.all.order(created_at: :desc)
        render json: ordered_conversation, include: ['user.user_photo']
    end

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
