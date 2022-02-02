class Listing < ApplicationRecord
    validates :title, pressence: true
    validates :category, presence: true
    validates :location, presence: true
    validates :price, presence: true
    validates :desc, presence: true

    belongs_to :user
end
