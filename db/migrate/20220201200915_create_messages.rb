class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :sender_id
      t.references :conversation, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
