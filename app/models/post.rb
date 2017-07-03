class Post < ApplicationRecord
  attr_accessor :image_width, :image_height
  mount_uploader :image, ImageUploader
  belongs_to :category
  validates :title, presence: true, length: {maximum: 140}
  validates :body, presence: true
  validates :perex, presence: true
  validates :desc, presence: true
  validates :category, presence: true
  default_scope { order(created_at: :desc) }


end
