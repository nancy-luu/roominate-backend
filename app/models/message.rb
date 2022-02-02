class Message < ApplicationRecord
    validates :message, presence: true
    
    belongs_to :conversation
    default_scope { order(created_at: :desc) }
end
