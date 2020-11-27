class Product < ApplicationRecord
  belongs_to :category
  has_one :admin_product
  has_one :admin_user, through: :admin_product
end
