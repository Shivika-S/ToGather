class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
