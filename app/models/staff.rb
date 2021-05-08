class Staff < ApplicationRecord
  has_many(:reservable_by_staffs)
end
