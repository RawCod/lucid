class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.string :capacity
      t.string :category
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
