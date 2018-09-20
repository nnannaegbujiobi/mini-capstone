class Product < ApplicationRecord

  #finds a Supplier who's id matches the products foreign key
  #   Supplier.find_by(id: supplier_id)
   has_many :carted_products
   has_many :orders, through: :carted_products
   
   has_many :categories, through: :category_products
  # end
  def category_names
    categories.map{|category|category.name}
  end

    belongs_to :supplier #association methods
   has_many :images

  validates :name, uniqueness:true
  validates :name, presence:true
  validates :name, length: {maximum: 40}
  
  validates :price, presence: true
  
  validates :price, numericality: {greater_than: 0}
  
  validates :description, length: {in: 6...500}

  def price_array
    price.split(", ")
  end

  def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end
  def discounted
    price <= 10 
      
  end

  def tax 
  price * 0.09
  end 

  def total 
    price + tax
 end
end

