class Images < ApplicationRecord
  extend FriendlyId
  #friendly_id "#{Time.now.to_i}#{self.title}", use: :slugged
  friendly_id :title, use: :slugged
  has_one_attached :data

 validates :photos, attached: true, content_type: [:png, :jpg, :jpeg], size: { less_than: 100.megabytes , message: 'is not given between size' }
 validates :title, presence: true

end
