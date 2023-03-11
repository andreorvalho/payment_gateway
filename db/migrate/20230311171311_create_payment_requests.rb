class CreatePaymentRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_gateway_payment_requests do |t|
      t.string :customer_name,  null: false
      t.string :place_of_birth,  null: false
      t.date :date_of_birth,  null: false
      t.decimal :amount, precision: 10, scale: 2,  null: false
      t.datetime :timestamp,  null: false

      t.timestamps
    end
  end
end
