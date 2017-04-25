class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :experience_id
      t.float :rating
      t.text :comment

      t.timestamps
    end
  end
end
