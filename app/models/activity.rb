class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :theme, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :date, presence: true
end
