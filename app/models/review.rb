class Review < ApplicationRecord
    validates :message, pressence: true

    belongs_to :user_review
end
