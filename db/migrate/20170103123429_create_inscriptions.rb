class CreateInscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :inscriptions do |t|
      t.string :full_name
      t.date :birthday
      t.string :mother
      t.string :father
      t.string :sex
      t.string :shirt_size
      t.string :baptism
      t.string :first_eucharist
      t.string :chrism
      t.string :follow_me
      t.string :revive
      t.string :other_meeting
      t.string :pastoral
      t.string :health_problem
      t.string :hp_describe
      t.string :medication
      t.datetime :medication_time
      t.text :rmk

      t.timestamps
    end
  end
end
