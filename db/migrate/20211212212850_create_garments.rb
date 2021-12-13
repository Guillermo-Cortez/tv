class CreateGarments < ActiveRecord::Migration[6.1]
  def change
    create_table :garments do |t|
      t.string :description
      t.references :colour, null: false, foreign_key: true
      t.references :type_of_garment, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
