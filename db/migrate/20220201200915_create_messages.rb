class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :message
      t.references :conversation, null: false, foreign_key: true
      t.references :user
      
      t.timestamps
    end
  end
end
