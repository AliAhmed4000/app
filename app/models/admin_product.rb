class AdminProduct < ApplicationRecord

  belongs_to :AdminUser
  belongs_to :Product
end
