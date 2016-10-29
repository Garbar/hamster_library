# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'

banners = ["https://static.pexels.com/photos/192384/pexels-photo-192384-large.jpeg",
            "https://static.pexels.com/photos/192329/pexels-photo-192329-large.jpeg",
            "https://static.pexels.com/photos/192318/pexels-photo-192318-large.jpeg",
            "https://static.pexels.com/photos/192323/pexels-photo-192323.jpeg"]
# Story.destroy_all
# User.destroy_all

user = User.create!(    email: FFaker::Internet.email,
                        password:              "password",
                        password_confirmation: "password")

10.times do |index|
  user.stories.create!(title: FFaker::Lorem.sentence(3).chop,
                description: FFaker::Lorem.paragraph,
                image_url: banners.sample)
end

p "Created #{Story.count} stories"

# author = Author.create!(name:  "Test User",
#                         email: "test@example.com",
#                         password:              "password",
#                         password_confirmation: "password")
#
# author.posts.create!(title: "First",
#                      body: "Schlitz selvage four loko succulents fap, try-hard helvetica actually chartreuse cronut. Next level chillwave skateboard hammock gastropub coloring book, readymade brunch trust fund. Plaid meh portland, normcore meggings blue bottle polaroid deep v selvage taxidermy bushwick. Seitan tbh schlitz pork belly shabby chic coloring book. Lo-fi meh succulents, plaid paleo literally chartreuse sartorial chia subway tile taxidermy. Bushwick squid seitan bicycle rights, hella chambray kale chips tumblr. Distillery chicharrones hashtag williamsburg iceland gentrify.",
#                      description: "Schlitz selvage four loko succulents fap, try-hard helvetica actually chartreuse cronut. Next level chillwave skateboard hammock gastropub coloring book, readymade brunch trust fund. Plaid meh portland, normcore meggings blue bottle polaroid deep v selvage taxidermy bushwick. Seitan tbh schlitz pork belly shabby chic coloring book. Lo-fi meh succulents, plaid paleo literally chartreuse sartorial chia subway tile taxidermy. Bushwick squid seitan bicycle rights, hella chambray kale chips tumblr. Distillery chicharrones hashtag williamsburg iceland gentrify.",
#                      banner_image_url: "https://static.pexels.com/photos/192384/pexels-photo-192384-large.jpeg")
#
# author.posts.create!(title: "Second",
#                      body: "Mixtape kombucha shabby chic farm-to-table tacos. Man bun coloring book polaroid, authentic gastropub next level pour-over vegan. Try-hard vape put a bird on it, umami yuccie aesthetic tattooed +1 affogato. Kale chips meditation shabby chic lo-fi la croix messenger bag. VHS quinoa tattooed, microdosing kitsch whatever enamel pin biodiesel. Tilde helvetica la croix poutine chicharrones, subway tile keffiyeh art party green juice small batch tacos. Everyday carry poutine godard, YOLO tofu XOXO vape gochujang yr kogi leggings humblebrag.",
#                      description: "Mixtape kombucha shabby chic farm-to-table tacos. Man bun coloring book polaroid, authentic gastropub next level pour-over vegan. Try-hard vape put a bird on it, umami yuccie aesthetic tattooed +1 affogato. Kale chips meditation shabby chic lo-fi la croix messenger bag. VHS quinoa tattooed, microdosing kitsch whatever enamel pin biodiesel. Tilde helvetica la croix poutine chicharrones, subway tile keffiyeh art party green juice small batch tacos. Everyday carry poutine godard, YOLO tofu XOXO vape gochujang yr kogi leggings humblebrag.",
#                      banner_image_url: "https://static.pexels.com/photos/192329/pexels-photo-192329-large.jpeg")
#
# author.posts.create!(title: "Third",
#                      body: "Man bun ethical ennui PBR&B mumblecore authentic, food truck williamsburg letterpress gochujang microdosing kogi fixie squid chicharrones. Aesthetic lo-fi dreamcatcher, pinterest disrupt keffiyeh crucifix. Kinfolk coloring book kickstarter post-ironic everyday carry yuccie, before they sold out pour-over thundercats PBR&B slow-carb austin viral. Slow-carb DIY yr brunch. Tousled hell of live-edge farm-to-table, glossier coloring book edison bulb godard vape keytar affogato. Pinterest synth messenger bag listicle, cornhole pabst fixie fashion axe shabby chic chia shoreditch four loko bitters distillery. Photo booth gastropub hexagon 8-bit copper mug fam cold-pressed asymmetrical.",
#                      description: "Man bun ethical ennui PBR&B mumblecore authentic, food truck williamsburg letterpress gochujang microdosing kogi fixie squid chicharrones. Aesthetic lo-fi dreamcatcher, pinterest disrupt keffiyeh crucifix. Kinfolk coloring book kickstarter post-ironic everyday carry yuccie, before they sold out pour-over thundercats PBR&B slow-carb austin viral. Slow-carb DIY yr brunch. Tousled hell of live-edge farm-to-table, glossier coloring book edison bulb godard vape keytar affogato. Pinterest synth messenger bag listicle, cornhole pabst fixie fashion axe shabby chic chia shoreditch four loko bitters distillery. Photo booth gastropub hexagon 8-bit copper mug fam cold-pressed asymmetrical.",
#                      banner_image_url: "https://static.pexels.com/photos/192318/pexels-photo-192318-large.jpeg")
#
# author.posts.create!(title: "Fourth",
#                      body: "Kombucha tbh portland, vaporware air plant ramps intelligentsia drinking vinegar la croix kogi. Yr paleo skateboard bitters locavore deep v gentrify pok pok enamel pin actually farm-to-table normcore migas. Slow-carb truffaut next level knausgaard, butcher raclette flexitarian synth locavore polaroid cold-pressed seitan kinfolk fixie prism. Hot chicken bicycle rights VHS, letterpress prism coloring book vice direct trade cold-pressed la croix. Hammock aesthetic tote bag, farm-to-table succulents four loko kitsch messenger bag chicharrones wayfarers green juice. Poutine neutra quinoa, mumblecore authentic deep v lomo. Fashion axe cray cold-pressed, jean shorts you probably haven't heard of them sustainable readymade tattooed.",
#                      description: "Kombucha tbh portland, vaporware air plant ramps intelligentsia drinking vinegar la croix kogi. Yr paleo skateboard bitters locavore deep v gentrify pok pok enamel pin actually farm-to-table normcore migas. Slow-carb truffaut next level knausgaard, butcher raclette flexitarian synth locavore polaroid cold-pressed seitan kinfolk fixie prism. Hot chicken bicycle rights VHS, letterpress prism coloring book vice direct trade cold-pressed la croix. Hammock aesthetic tote bag, farm-to-table succulents four loko kitsch messenger bag chicharrones wayfarers green juice. Poutine neutra quinoa, mumblecore authentic deep v lomo. Fashion axe cray cold-pressed, jean shorts you probably haven't heard of them sustainable readymade tattooed.",
#                      banner_image_url: "https://static.pexels.com/photos/192323/pexels-photo-192323.jpeg")
