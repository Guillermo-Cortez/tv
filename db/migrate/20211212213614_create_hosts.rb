class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :sex
      t.integer :age

      t.timestamps
    end
  end
end
