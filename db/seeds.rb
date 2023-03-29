# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new( name: "Burberry Shirt", price: 350, image_url: "https://assets.burberry.com/is/image/Burberryltd/85754AD2-B452-4FE9-A7CA-BE0FFD8D6B0F?$BBY_V2_SL_3x4$&wid=1278&hei=1700", description: "Large Nova Check" )

product.save


