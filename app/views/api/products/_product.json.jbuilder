json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.discounted product.discounted
json.tax product.tax
json.total product.total
json.supplier_id product.supplier_id
# json.image product.image
# json.current_user current_user
# json.categories product.categories
# json.categories product.category_names
 # json.order order
json.formatted do
  json.discounted(product.price)
  json.tax(product.tax)
  json.total(product.total)
end