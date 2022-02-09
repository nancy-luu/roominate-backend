class MessageSerializer < ActiveModel::Serializer
    attributes :message, :user
  
    belongs_to :conversation
    has_one :user, through: :conversation
  end
    