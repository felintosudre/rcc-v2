class Phone < ApplicationRecord
  belongs_to :inscription, optional: true
end
