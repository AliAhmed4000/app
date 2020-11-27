class Notification < ApplicationRecord
  belongs_to :notification_reciever, polymorphic: true
end
