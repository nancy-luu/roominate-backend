class ConversationSerializer < ActiveModel::Serializer
  attributes :header, :user, :user2, :messages, :created_at

  has_many :messages 
end
  