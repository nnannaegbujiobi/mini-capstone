

 json.partial! "product.json.jbuilder", product: @product

json.partial! "order.json.jbuilder", order: @order

json.partial "carted_products.json.jbuilder", carted_products: @carted_products