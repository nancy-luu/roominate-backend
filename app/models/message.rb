class Message < ApplicationRecord
    validates :message, presence: true
    
    belongs_to :conversation
    has_one :user, through: :conversation
end
