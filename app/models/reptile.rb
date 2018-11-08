class Reptile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :species, presence: true
  validates :size, presence: true
  validates :weight, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
end
