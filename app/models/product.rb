class Product < ApplicationRecord
  validates :name, uniqueness:true
  validates :name, presence:true
  validates :name, length: {maximum: 40}
  
  validates :price, presence: true
  
  validates :price, numericality: {greater_than: 0}
  
  validates :image_url, presence:true
  
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

