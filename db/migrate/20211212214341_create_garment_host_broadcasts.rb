class CreateGarmentHostBroadcasts < ActiveRecord::Migration[6.1]
  def change
    create_table :garment_host_broadcasts do |t|
      t.references :garment, null: false, foreign_key: true
      t.references :host, null: false, foreign_key: true
      t.references :broadcast, null: false, foreign_key: true
      t.timestamps
    end
  end
end
