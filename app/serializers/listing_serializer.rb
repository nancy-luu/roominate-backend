class ListingSerializer < ActiveModel::Serializer
    attributes :id, :title, :category, :location, :price, :desc, :user_id, :listing_photos_id
    has_one :listing_photo  
end