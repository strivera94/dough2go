# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create(name: 'Chocolate Frosted', ingredients: 'ground nutmeg, egg, brown sugar, milk, yogurt, unsalted butter, pure vanilla extract', price: 1.5, image_url: 'https://assets.epicurious.com/photos/57978bbc3a12dd9d5602400a/2:1/w_1260%2Ch_630/chocolate-glaze.jpg', type: 'Donut' )
Product.create(name: 'Strawberry Frosted', ingredients: 'milk, eggs, vanilla extract, strawberries', price: 1.5, image_url: 'https://img.huffingtonpost.com/asset/5b9e7a8d2200005700da0c55.jpeg?ops=scalefit_960_noupscale', type: 'Donut')
Product.create(name: 'Coffee', ingredients: 'coffee beans, milk', price: 2.0, image_url: 'https://images.theconversation.com/files/126820/original/image-20160615-14016-njqw65.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip', type: 'Beverage')
Product.create(name: 'Boston Cream', ingredients: 'milk, sugar, eggs, vanilla extract, corn syrup', price: 2.0, image_url: 'https://www.seriouseats.com/recipes/images/2014/04/20140424-290957-boston-cream-doughnuts.jpg', type: 'Donut')
Product.create(name: 'Jelly-Filled', ingredients: 'milk, sugar, eggs, raspberry jelly', price: 2.0, image_url: 'https://www.jocooks.com/wp-content/uploads/2013/02/baked-jam-filled-donuts-3.jpg', type: 'Donut')
Product.create(name: 'Matcha Latte', ingredients: 'matcha powder, milk', price: 3.0, image_url: 'https://cafedeoro-rw.com/wp-content/uploads/2017/10/MatchaLatte_1.jpg', type: 'Beverage')
Product.create(name: 'Hot Chocolate', ingredients: 'milk, sugar, cocoa powder, cinnamon sticks, marshmellows, whipped cream', price: 2.5, image_url: 'http://kitchenlane.com/wp-content/uploads/2019/02/redohtchocolateprofile72WM767.jpg', type: 'Beverage')
Product.create(name: 'Cruller', ingredients: 'honey, egg, milk, sugar, lemon zest', price: 2.0, image_url: 'https://cdn.shopify.com/s/files/1/1649/2419/products/French-Crueler-2_800x.jpg?v=1499375562', type: 'Donut')
Product.create(name: 'Coconut Donut', ingredients: 'coconut sugar, egg, coconut milk, vanilla extract, coconut flakes', price: 2.0, image_url: 'https://www.willcookforsmiles.com/wp-content/uploads/2015/02/Coconut-Cake-Donuts-3-from-willcookforsmiles.com_.jpg', type: 'Donut')
Product.create(name: 'Apple Cider', ingredients: 'pressed apples, cinnamon, clove, allspice, sugar', price: 2.5, image_url: 'https://cookeatpaleo.com/wp-content/uploads/2014/09/hot-apple-cider680x680.jpg', type: 'Beverage')