class AddAttachmentAvatarToInscriptions < ActiveRecord::Migration
  def self.up
    change_table :inscriptions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :inscriptions, :avatar
  end
end
