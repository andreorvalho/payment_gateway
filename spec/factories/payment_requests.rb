FactoryBot.define do
  factory :payment_request, class: 'PaymentGateway::PaymentRequest' do
    sequence :customer_id do |n|
      n
    end
    amount {  50.55 }
    timestamp { Time.now - 2.minutes }
  end
end
