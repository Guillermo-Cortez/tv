class CreateTypeOfGarments < ActiveRecord::Migration[6.1]
  def change
    create_table :type_of_garments do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
