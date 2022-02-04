class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :email
      t.string :password_digest
      t.string :user_type
      t.string :user_desc
      t.string :user_location
      t.integer :user_charge
      t.references :user_photos

      t.timestamps
    end
  end
end
