class Conversation < ApplicationRecord
    validates :header, presence: true

    belongs_to :user
    belongs_to :user2, class_name: "User"

    # has_many :messages, dependent: :destroy
    has_many :messages
end
