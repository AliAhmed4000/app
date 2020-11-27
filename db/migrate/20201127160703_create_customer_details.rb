class CreateCustomerDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_details do |t|
      t.string :phone
      t.string :address
      t.belongs_to :customer, foreign_key: true

      t.timestamps
    end
  end
end
