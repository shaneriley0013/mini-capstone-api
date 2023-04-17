# Supplier.create!([
#   {name: "Lamborghini", phone: "3125551234", email: "laboinfo@laborghini.com", foreign_id: 1},
#   {name: "Gucci", phone: "3125557789", email: "info@gucci.com", foreign_id: 2},
#   {name: "Mercedes", phone: "3125557654", email: "mercedesinfo@mercedes.com", foreign_id: 3},
#   {name: "Rolex", phone: "3125557890", email: "info@rolex.com", foreign_id: 4},
#   {name: "Gold Toilets R US", phone: "3125556612", email: "goldenshitter@goldthrone.com", foreign_id: 5},
#   {name: "Burberry", phone: "3125553333", email: "burberryinfo@burberry.com", foreign_id: 6}
# ])
# Product.create!([
#   {name: "Burberry Shirt", price: "351.0", image_url: "https://assets.burberry.com/is/image/Burberryltd/85754AD2-B452-4FE9-A7CA-BE0FFD8D6B0F?$BBY_V2_SL_3x4$&wid=1278&hei=1700", description: "Large Nova Check", invetory_count: 671, foreign_id: nil},
#   {name: "Gucci Slippers", price: "251.0", image_url: "https://i.ebayimg.com/images/g/nHEAAOSw8BVjjPjI/s-l1600.jpg", description: "Gucci Green and Red Filp", invetory_count: 667, foreign_id: nil},
#   {name: "Rolex GMT-Master II", price: "16452.0", image_url: "https://www.rolex.com/en-us/watches/gmt-master-ii/m126713grnr-0001", description: "Oystersteel and yellow gold", invetory_count: 668, foreign_id: nil},
#   {name: "Gold Toilet", price: "66601.0", image_url: "https://royaltoiletry.com/wp-content/uploads/2020/07/royal-style-gold-toilet-5.jpg", description: "A Gold Throne Just Like Elvis", invetory_count: 669, foreign_id: nil},
#   {name: "Mercedes-AMG GT 43 4-Door Coupe", price: "92503.0", image_url: "https://www.benzinsider.com/wp-content/uploads/2021/05/mercedes-amg-gt-43-by-larte-design.jpg", description: "Black with tan interior", invetory_count: 670, foreign_id: nil},
#   {name: "Camo Lamborghini", price: "266603.0", image_url: "https://cdna.artstation.com/p/assets/images/images/033/359/154/large/nickolay-polishchuk-fin1.jpg?1609321043", description: "Black, Grey, and White Camo Lamborghini", invetory_count: 671, foreign_id: nil},
#   {name: "Burrberry Pants", price: "436.83", image_url: "https://img.giglio.com/images/prodZoom/B61860.054_3.jpg", description: "Brown and tan Nova Check", invetory_count: 666, foreign_id: nil}
# ])



###################################################################
# Code to update the image with  urls. ====> RUN:  rails db:seed   after you change the id in the code below

image = Image.new(url: "https://www.rolex.com/en-us/watches/gmt-master-ii/m126713grnr-0001", product_id: 14)
image.save!

######################################################################

# supplier = Supplier.new(foreign_id: 4, id: 4 )
# supplier.save!
