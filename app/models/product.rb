class Product < ApplicationRecord
  has_many_attached :images
  belongs_to :category
  has_many :order_products
  has_many :stocks, dependent: :destroy
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_item

  private

  def ensure_not_referenced_by_any_item 
    unless line_items.empty?
      error.add(:base, "Line item present")
      throw :about
    end
  end
end
