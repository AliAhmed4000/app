class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :price
      t.belongs_to :order, foreign_key: true
      t.string :product_belongs_to

      t.timestamps
    end
  end
end
