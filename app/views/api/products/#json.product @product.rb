#json.products @products

json.array! @product.each do
 json.id product.id
 json.name prodcut.name
 # json.image .product.image
 json.description .product.description
end