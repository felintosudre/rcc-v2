class Email < ApplicationRecord
  belongs_to :inscription, inverse_of: :emails
end
