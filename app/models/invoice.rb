class Invoice < ApplicationRecord
    validates :title, presence: true
    # validates :invoice_desc
    # validates :paid
    # validates :hours_worked
    # validates :additional_fees
    # validates :amount

    belongs_to :user
    belongs_to :user2, class_name: "User"
end
