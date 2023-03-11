FactoryBot.define do
  factory :payment_request, class: 'PaymentGateway::PaymentRequest' do
    customer_name { "Andre Orvalho" }
    place_of_birth { "Portugal" }
    date_of_birth { Time.now - 36.years }
    amount {  50.55 }
    timestamp { Time.now - 2.minutes }
  end
end
