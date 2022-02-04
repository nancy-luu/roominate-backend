class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    
    has_many :listings

    # has_many :conversations

    has_one :user_review, dependent: :destroy
    has_many :reviews, through: :user_reviews

    has_one :user_photo, dependent: :destroy

    #enables password encryption with bcrypt
    has_secure_password

end
