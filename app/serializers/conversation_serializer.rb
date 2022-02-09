class ConversationSerializer < ActiveModel::Serializer
  attributes :header, :user, :user2, :messages

  has_many :messages 
end
  