class AddUserToGarmentHostBroadcast < ActiveRecord::Migration[6.1]
  def change
    add_reference :garment_host_broadcasts, :user, null: false, foreign_key: true
  end
end
