# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
  {name: "Dani", email: "dani@gmail.com", password: "password", password_confirmation: "password"},
  {name: "Tayt", email: "tayt@gmail.com", password: "password", password_confirmation: "password"}
])




Supplier.create!([
  {name: "Bob's Novelty Emporium", email: "big_bob@emporium.co", phone_number: "312-995-5566"},
  {name: "Sue's House of Nerdy Toys", email: "s.anderson@gmail.com", phone_number: "212-999-5556"},
  {name: "Tony's Truck", email: "blackhat@aol.com", phone_number: "555-555-5555"}
])

Category.create!([
  {name: "Cheap"},
  {name: "Wearable"},
  {name: "Damage"},
  {name: "Home Good"}
])


product=Product.new(name:"xbox",price:300,description:"gaming console")
product.save

product=Product.new(name:"monitor",price:150,description:"gaming monitor")
product.save


Product.create({
                name: "Lightsaber", 
                price: 270.10,
                description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster", 
                supplier_id: 2})

Product.create({
                name: "Space Cowboy Laser Gun", 
                price: 170.50,
                description: "This weapon has no other description than, Shiney!", 
                supplier_id: 2})

Product.create({
                name: "DnD Dice set", 
                price: 57.99,
                description: "Take down mighty dragons with this timeless set of 20 sided wonders", 
                supplier_id: 1})

Product.create({
                name: "Sonic Screwdriver", 
                price: 9.80,
                description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood", 
                supplier_id: 1})

Product.create({
                name: "Yoda sleeping bag", 
                price: 40.40,
                description: "For real", 
                supplier_id: 1})







Image.create("https://www.google.com/imgres?imgurl=https%3A%2F%2Fcompass-ssl.xbox.com%2Fassets%2Ff5%2F96%2Ff5967de6-59db-4af0-80cf-461c03052eff.png%3Fn%3DResults-Page_Page-Hero-0_X1S_1083x612.png&imgrefurl=https%3A%2F%2Fwww.xbox.com%2Fen-us%2Fxbox-one%2Fhelp-me-choose&docid=fpqOXdqlLDAHUM&tbnid=GnQpMk6TaT0V6M%3A&vet=10ahUKEwiy6q-b_JLdAhUGMd8KHUg-AswQMwjIASgBMAE..i&w=1083&h=612&bih=860&biw=767&q=xbox%20one%20s&ved=0ahUKEwiy6q-b_JLdAhUGMd8KHUg-AswQMwjIASgBMAE&iact=mrc&uact=8",product_id: 1)

Image.create("https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F81Zt42ioCgL._SX425_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.com%2FSamsung-LC49HG90DMNXZA-Curved-49-inch-Monitor%2Fdp%2FB072C7TNC5&docid=Qhm3NvUyH8se1M&tbnid=abaylSUorslRwM%3A&vet=10ahUKEwjWmKeV_ZLdAhVoUd8KHXp0B2MQMwjsAigCMAI..i&w=425&h=283&bih=860&biw=767&q=gaming%20monitor&ved=0ahUKEwjWmKeV_ZLdAhVoUd8KHXp0B2MQMwjsAigCMAI&iact=mrc&uact=8", product_id: 2,)

CategoryProduct.create!([
  {category_id: 1, product_id: 1},
  {category_id: 1, product_id: 4},
  {category_id: 2, product_id: 3},
  {category_id: 2, product_id: 5}])