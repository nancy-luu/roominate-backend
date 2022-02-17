class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :title, :invoice_desc, :paid, :hours_worked, :additional_fees, :amount, :user, :user2, :created_at
  
end
