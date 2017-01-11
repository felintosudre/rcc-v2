class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :district
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :inscription, foreign_key: true

      t.timestamps
    end
  end
end
