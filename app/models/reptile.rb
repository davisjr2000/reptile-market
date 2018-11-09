class Reptile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :level, presence: true
  validates :price, presence: true
  validates :element, presence: true
  mount_uploader :photo, PhotoUploader
end
