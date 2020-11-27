class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.bigint :notification_reciever_id
      t.string :notification_reciever_type
      t.string :title
      t.text :content
      t.integer :owner_id

      t.timestamps
    end
      add_index :notifications, :owner_id
  end
end
