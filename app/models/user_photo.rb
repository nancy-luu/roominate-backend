class UserPhoto < ApplicationRecord
    after_initialize :set_defaults
    
    def set_defaults 
        self.image ||= "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png"
    end
    
    validates :image, presence: true

    belongs_to :user
end
