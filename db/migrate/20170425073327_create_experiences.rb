class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string  :title
      t.string  :city
      t.text    :description
      t.string  :category
      t.float   :avg_rating
      t.decimal :cost
      t.integer :user_id
      t.timestamps
    endfloat
  end
end
