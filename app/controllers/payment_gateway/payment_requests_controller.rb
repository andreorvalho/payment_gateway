module PaymentGateway
  class PaymentRequestsController < ApplicationController
    def index
      @payments = FindPaymentRequests.new.call
    end
  end
end
