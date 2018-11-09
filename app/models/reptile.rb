class Reptile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :level, presence: true
  validates :price, presence: true
  validates :element, presence: true
  mount_uploader :photo, PhotoUploader
  include PgSearch
  pg_search_scope :search_by_name_and_element,
    against: [ :name, :element ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
