class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :shopping_cart, foreign_key: true

      t.timestamps
    end
  end
end
