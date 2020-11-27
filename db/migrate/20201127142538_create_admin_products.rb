class CreateAdminProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_products do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :admin_user, foreign_key: true

      t.timestamps
    end
  end
end
