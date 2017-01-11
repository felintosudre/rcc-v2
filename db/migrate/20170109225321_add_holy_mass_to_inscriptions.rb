class AddHolyMassToInscriptions < ActiveRecord::Migration[5.0]
  def change
    add_column :inscriptions, :holy_mass, :string
  end
end
