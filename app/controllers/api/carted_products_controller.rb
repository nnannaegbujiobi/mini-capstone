class Api::CartedProductsController < ApplicationController

def create
@carted_product = CartedProduct.create(user_id: current_user.id, product_id:params[:product_id], quantity: params[:quantity], status:"carted")

if @create.save
  render 'show.json.jbuilder'
else 
  render json: {errors: @carted_products.errors. full_messages},
  status: :bad_request
end

end
end