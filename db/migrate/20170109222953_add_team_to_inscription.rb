class AddTeamToInscription < ActiveRecord::Migration[5.0]
  def change
    add_reference :inscriptions, :team, foreign_key: true
  end
end
