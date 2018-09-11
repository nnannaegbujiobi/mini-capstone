class Api::ProductsController < ApplicationController


def index
  @products = Product.all.order(:id)
  
  if params[:name]
    @products = Product.where("name LIKE ?" "%#{params[:name]}")
  end
  if params[:price_sort]
    @products = Products.order(price: :asc)
  else
    @products = @products.order(id: :asc)
  end

    render "index.json.jbuilder"
end

def show
  @product = Product.find_by(id:params[:id])
  render "show.json.jbuilder"
 end

def create
  @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description]
    )
  if @product.save #happy path
  render "show.json.jbuilder"
  else #sad path
    render json: {errors: @product.errors.full_message}, status: :unprocessable_entity
 end
end
 def update
  @product = Product.find(params[:id])
  @product.name = params[:name] || @product.name
  @product.price = params[:price] || @product.price
  @product.description = params[:description] || @product.description

    
    if @product.update #happy path
  render "show.json.jbuilder"
else #sad path
  render json: {errors: @products.errors.full_message},
  status: :unprocessable_entity

 end
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  render json: {message: "product successfully destroyed"}
 
end
end