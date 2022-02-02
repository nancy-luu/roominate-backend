class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :message
      t.integer :user_id
      t.references :user_review

      t.timestamps
    end
  end
end
