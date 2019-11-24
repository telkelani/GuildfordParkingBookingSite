class Bay < ApplicationRecord
  has_one :car
  belongs_to :location
end
