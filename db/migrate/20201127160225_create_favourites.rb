class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
