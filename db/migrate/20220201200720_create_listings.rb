class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :listing_img
      t.string :title
      t.string :category
      t.string :location 
      t.integer :price
      t.string :desc
      t.references :user

      t.timestamps
    end
  end
end
