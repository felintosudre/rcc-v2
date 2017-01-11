class Inscription < ApplicationRecord
  belongs_to :team
  has_one :address
  has_many :emails, inverse_of: :inscription
  has_many :phones, inverse_of: :inscription

  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :emails, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
