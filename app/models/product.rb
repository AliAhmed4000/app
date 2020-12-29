class Product < ApplicationRecord
  belongs_to :category, :dependent => :destroy
  has_one :admin_product
  has_one :admin_user, through: :admin_product
  has_many_attached :images
  validates :name, presence: true
  has_many :favourites
  has_many :customers, through: :favourites
end
