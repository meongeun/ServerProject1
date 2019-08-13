class Store < ApplicationRecord
  belongs_to :customuser
  belongs_to :review
  belongs_to :storeuser
end
