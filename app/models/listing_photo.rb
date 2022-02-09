class ListingPhoto < ApplicationRecord
    after_initialize :set_defaults

    def set_defaults 
        self.image ||= "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
    end

    validates :image, presence: true

    
    belongs_to :listing
end
