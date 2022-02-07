class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :email

    has_many :listings

    has_many :conversations
    # has_many :other_conversations, class_name: "User", foreign_key: "user2"
    has_many :messages, through: :conversations

    has_one :user_review, dependent: :destroy
    has_many :reviews, through: :user_review

    has_one :user_photo, dependent: :destroy
end
  