class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.string :header
      t.integer :user_1, foreign_key: {to_table: :users}
      t.integer :user_2, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
