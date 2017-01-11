class AddCoordinatorToInscriptions < ActiveRecord::Migration[5.0]
  def change
    add_column :inscriptions, :coordinator, :string
  end
end
