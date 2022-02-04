class Listing < ApplicationRecord
    validates :title, presence: true
    validates :category, presence: true
    validates :location, presence: true
    validates :price, presence: true
    validates :desc, presence: true

    belongs_to :user
    has_one :listing_photo, dependent: :destroy
end
