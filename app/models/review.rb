class Review < ApplicationRecord
    validates :message, presence: true

    belongs_to :user_review
end
