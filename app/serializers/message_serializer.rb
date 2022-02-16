class MessageSerializer < ActiveModel::Serializer
    attributes :message, :user, :created_at, :conversation_id
  
    belongs_to :conversation
    has_one :user, through: :conversation
  end
    