class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :house_number
      t.string :society_name
      t.string :area
      t.string :city
      t.references :employee

      t.timestamps
    end
  end
end