class User < ApplicationRecord
    has_many :listings
    has_many :user_conversations, dependent: :destroy
    has_many :conversations, through: :user_conversations
    has_one :user_review, dependent: :destroy
    has_many :reviews, through: :user_reviews

    #enables password encryption with bcrypt
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
