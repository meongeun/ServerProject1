class Storeuser < ApplicationRecord
  belongs_to :store
  belongs_to :ad
end
