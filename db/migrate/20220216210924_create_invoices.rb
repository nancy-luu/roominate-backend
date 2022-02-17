class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :title 
      t.string :invoice_desc
      t.boolean :paid
      t.integer :hours_worked
      t.integer :additional_fees
      t.integer :amount
      t.references :user, foreign_key: true
      t.references :user2, foreign_key: { to_table: "users"}

      t.timestamps
    end
  end
end
