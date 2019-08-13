class Ad < ApplicationRecord
  belongs_to :event
  belongs_to :warn
end
