class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :phone
      t.string :whatsapp
      t.references :inscription, foreign_key: true

      t.timestamps
    end
  end
end
