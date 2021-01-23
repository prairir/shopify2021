class Images < ApplicationRecord
  has_one_attached :data

  validates :data, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..5.megabytes }
  validates :title, presence: true
end
