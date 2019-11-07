class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  mount_uploader :image, ImageUploader  # carrierwave support for our image column
  belongs_to :user, optional: true

  validates :name, :price, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  validates :name, length: { maximum: 40, too_long: "%{count} characters is the maximum allowed" }
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

  has_many :line_items

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line items present')
      throw :abort
    end
  end
end
