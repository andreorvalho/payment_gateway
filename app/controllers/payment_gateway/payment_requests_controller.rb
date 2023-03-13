module PaymentGateway
  class PaymentRequestsController < ApplicationController
    def index
      @payments = FindPaymentRequests.new.call
      render json: { payments: @payments }
    end
  end
end
