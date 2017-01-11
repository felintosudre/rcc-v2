class AddCoupleSupportToInscriptions < ActiveRecord::Migration[5.0]
  def change
    add_column :inscriptions, :couple_support, :string
  end
end
