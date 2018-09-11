#json.products @products

json.array! @product.each do
 json.id product.id
 json.name prodcut.name
 json.image_url .product.image_url
 json.description .product.description
end