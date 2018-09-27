class Api::CartedProductsController < ApplicationController
def index
  @carted_products = current_user.carted_products.where(status: "carted")
  render "index.json.jbuilder"

end


def create
@carted_product = CartedProduct.create(user_id: current_user.id, product_id:params[:product_id], quantity: params[:quantity], status:"carted")

if @carted_products.save
  render "show.json.jbuilder"
else 
  render json: {errors: @carted_products.errors.full_messages},
  status: :bad_request
end

end
def destroy
  @carted_product =CartedProduct.find(params[:id])
  @carted_product.update(status: "remove")
end

end

