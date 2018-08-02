class Post < ApplicationRecord
  attr_accessor :image_width, :image_height
  mount_uploader :image, ImageUploader
  has_and_belongs_to_many :categories
  validates :title, presence: true, length: {maximum: 140}
  validates :body, presence: true 
  validates :perex, presence: true, length: {maximum: 255}
  validates :desc, presence: true, length: {maximum: 225}
  validate :has_one_category_at_least
  default_scope { order(created_at: :desc) }


def to_param
  "#{id}-#{title.parameterize.downcase}"
end

  def has_one_category_at_least
     if categories.empty?
       errors.add(:categories, "zadajte aspon jendu ketegoriu")
     end
   end

   def self.search(search)
     if search
       where('title LIKE ? OR perex LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
     else
       all
     end
   end
 end
