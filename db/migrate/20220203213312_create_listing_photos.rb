class CreateListingPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :listing_photos do |t|
      t.references :listing, null: false, foreign_key: true
      t.string :image
      
      t.timestamps
    end
  end
end
