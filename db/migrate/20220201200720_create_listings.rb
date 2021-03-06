class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :category
      t.string :location 
      t.integer :price
      t.string :desc
      t.references :user
      t.references :listing_photos

      t.timestamps
    end
  end
end
