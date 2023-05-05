class Product < ApplicationRecord
  belongs_to :subcategory
  has_many_attached :datasheet
end
