class ChangeDataTypeForCapacity < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :capacity, :string
    add_column :events, :capacity, :integer
  end
end
