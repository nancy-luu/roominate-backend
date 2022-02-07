class MessagesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        render json: Message.all
    end


    def show 
        message = Messages.find(params[:id])
        render json: message
    end

    def create
        message = Message.create!(message_params)
        render json: message, status: :created
    end

    def destroy
        message = find_message
        message.destroy!
        head :no_content
    end


    private

    def message_params
        params.permit(:message, :sender_id, :conversation_id)
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_message
        Message.find(params[:id])
    end

    def render_not_found
        render json: { error: "Message not found" }, status: :not_found
    end

end
