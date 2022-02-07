class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.string :header
      t.references :user, foreign_key: true
      t.references :user2, foreign_key: { to_table: "users"}

      t.timestamps
    end
  end
end

