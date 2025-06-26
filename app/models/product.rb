class Product < ApplicationRecord
  has_many_attached :images
  belongs_to :category
  has_many :stocks, dependent: :destroy
end
