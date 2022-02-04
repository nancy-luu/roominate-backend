class Conversation < ApplicationRecord
    validates :header, presence: true

    belongs_to :user_1, class_name: 'User', foreign_key: :user_1_id
    belongs_to :user_2, class_name: 'User', foreign_key: :user_2_id

    has_many :messages, dependent: :destroy
end
