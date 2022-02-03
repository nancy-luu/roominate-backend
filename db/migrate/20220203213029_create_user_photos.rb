class CreateUserPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :user_photos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.timestamps
    end
  end
end
