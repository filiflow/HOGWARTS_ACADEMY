class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :title, presence: true
  validates :theme, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :date, presence: true
end
