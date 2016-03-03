class Product < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "250x250>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :title, :color, :description, :catalog, :product_type, :discount, :image, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
end
