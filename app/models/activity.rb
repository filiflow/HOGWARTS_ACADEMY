class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :title, presence: true
  validates :theme, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :date, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_theme,
  against: [ :title, :theme ],
  using: {
    tsearch: { prefix: true }
  }
end
