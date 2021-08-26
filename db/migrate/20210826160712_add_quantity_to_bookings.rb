class AddQuantityToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :quantity, :integer
  end
end
