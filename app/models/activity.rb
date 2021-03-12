class Activity < ApplicationRecord
  belongs_to :category
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :cover_photo
  has_many_attached :photos
end
