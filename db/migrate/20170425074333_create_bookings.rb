class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.integer :experience_id

      t.timestamps
    end
  end
end
