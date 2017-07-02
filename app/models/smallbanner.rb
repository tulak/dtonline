class Smallbanner < ApplicationRecord
  attr_accessor :image_width, :image_height
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validate :validate_maximum_image_size

def validate_maximum_image_size
  if self.image_width > 650 || self.image_height > 300
    errors.add :image, "Obrazok moze mat maximalne rozlisenie 650x300px."
  end
end
end
