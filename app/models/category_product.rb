class CategoryProduct < ApplicationRecord
  belongs_to :product
  belongs_to :category

  def categories
    category_products.map {|category_product|
      category_product.category}
end
end