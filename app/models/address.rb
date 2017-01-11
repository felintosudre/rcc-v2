class Address < ApplicationRecord
  belongs_to :inscription, optional: true
end
