class AddPriceToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :price, :float
  end
end
