class CreateYelpits < ActiveRecord::Migration[5.2]
  def change
    create_table :yelpits do |t|
      t.string :restaurant
      t.string :review
      t.integer :rating

      t.timestamps
    end
  end
end
