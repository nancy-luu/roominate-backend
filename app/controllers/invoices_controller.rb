class InvoicesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        render json: Invoice.all
    end 

    def my_invoices
        my_invoices = Invoice.where(user_id: session_user.id).or(Invoice.where(user2_id: session_user.id))
        ordered_invoice = my_invoices.all.order(created_at: :desc)
        render json: ordered_invoice, include: ['user.user_photo']
    end

    def my_invoices_total
        my_invoices = Invoice.where(user_id: session_user.id).or(Invoice.where(user2_id: session_user.id))
        unpaid_invoices = my_invoices.where(paid: false)
        render json: unpaid_invoices.sum(:amount)
    end

    def create
        invoice = Invoice.create!(invoice_params)
        render json: invoice, status: :created
    end

    def pay_invoice 
        invoice = find_invoice
        invoice.update!(paid_params)
        render json: invoice
    end 

    def destroy
        invoice = find_invoice
        invoice.destroy!
        head :no_content
    end

    private

    def invoice_params
        params.permit(:title, :invoice_desc, :paid, :hours_worked, :additional_fees, :amount, :user_id, :user2_id)
    end

    def paid_params
        params.permit(:paid)
    end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def find_invoice
        Invoice.find(params[:id])
    end

    def render_not_found
        render json: {error: 'Conversation not Found'}, status: :not_found
    end

end
