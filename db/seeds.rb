puts "🏠 Destroying existing seed data..."
User.destroy_all
Listing.destroy_all
UserConversation.destroy_all
Conversation.destroy_all
Message.destroy_all
UserReview.destroy_all
Review.destroy_all
puts "...Ready!"

# ---- USERS ---------
puts "Creating User data..."
user_type = [ "Home Owner", "Designer", "Builder", "Plumber", "Electrician", "Other"]
location = [ "San Francisco", "Los Angeles", "Seattle", "New York", "Boston", "Chicago"]
fakeName = Faker::Name.unique.first_name
fakeJob = Faker::Job.unique.title

# San Francisco Home Owner sample Users - TOTAL: 4 /#1-4
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Los Angeles Home Owner sample Users - TOTAL: 3 / #5-7
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Seattle Home Owner sample Users - TOTAL: 2 / #8-9
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Seattle for #{rand(1..10)} years",
    user_location: "Seattle",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Seattle for #{rand(1..10)} years",
    user_location: "Seattle",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# New York Home Owner sample Users - TOTAL: 3 / #10-12
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Boston Home Owner sample Users - TOTAL: 2 / #13-14
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Boston for #{rand(1..10)} years",
    user_location: "Boston",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Boston for #{rand(1..10)} years",
    user_location: "Boston",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Chicago Home Owner sample Users - TOTAL: 2 / #15-16
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Chicago for #{rand(1..10)} years",
    user_location: "Chicago",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Chicago for #{rand(1..10)} years",
    user_location: "Chicago",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Professionals - #17-41
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Designer",
    user_desc: "Knowledgeable professional with over 20 years experience",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Builder",
    user_desc: "Hardworking carpenter mindful of scheduling and budgets",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Plumber",
    user_desc: "Experienced in residential and commerical plumbing",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Electrician",
    user_desc: "Apprenticed with large construction firms and have completed over 100 contract tasks",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: fakeName,
    email: "#{fakeName}@email.com",
    password: "1234",
    user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
    user_type: "Other",
    user_desc: "Handy-man looking for extra work. Can install carpets, shades, and other misc.",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
20.times do
    User.create(
        username: fakeName,
        email: "#{fakeName}@email.com",
        password: "1234",
        user_img: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png",
        user_type: user_type.sample,
        user_desc: Faker::Lorem.sentence,
        user_location: location.sample,
        user_charge: Faker::Number.between(from: 50, to: 100),
    ) 
end
puts "..Users created!"


# ---- LISTINGS ---------
puts "Creating Listing data..."
category = [ "Furniture", "Design", "Build", "Plumbing", "Electrical", "Other"]

# San Francisco listings
Listing.create(
    listing_img: "https://www.truevalue.com/media/magefan_blog/fixing-faucet-wrench-o-rings-840x560-75.jpg"
    title: "Faucet repair"
    category: "Plumbing"
    location: "San Francisco"
    price: Faker::Number.between(from: 50, to: 100),
    desc: "Leaky faucet in masterbath needs fixing or replace."
    user_id: 1,
)
Listing.create(
    listing_img: "https://kapost-files-prod.s3.amazonaws.com/uploads/direct/1490305978-58-1131/RecycleKitchen1.jpeg"
    title: "Kitchen design and renovation"
    category: "Design"
    location: "San Francisco"
    price: 120,
    desc: "In search of a freelance designer to create a new kitchen layout. Hoping to start construction within 3 to 4 months."
    user_id: 1,
)
Listing.create(
    listing_img: "https://kapost-files-prod.s3.amazonaws.com/uploads/direct/1490305978-58-1131/RecycleKitchen1.jpeg"
    title: "Sofa reupholstering"
    category: "Other"
    location: "San Francisco"
    price: 60,
    desc: "Looking to reupholster our living room couch with vegan leather fabric."
    user_id: 1,
)
4 times do 
    Listing.create(
        listing_img: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
        title: "Task Example"
        category: category.sample
        location: "San Francisco"
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence
        user_id: rand(1..4)
    )
end

# Los Angeles Listings
Listing.create(
    listing_img: "https://blog.recessedlighting.com/wp-content/uploads/2014/09/living-room-layout-med.jpg"
    title: "Need dimmers installed"
    category: "Electrical"
    location: "Los Angeles"
    price: 40,
    desc: "Currently have switches in living room but looking for dimmers instead."
    user_id: 5,
)
Listing.create(
    listing_img: "https://diy.sndimg.com/content/dam/images/diy/fullset/2015/8/11/CI-Flynnside-Out_Deck-multi-level-built-in-bench.jpg.rend.hgtvcom.616.411.suffix/1439325898751.jpeg"
    title: "Backyard deck installation"
    category: "Build"
    location: "Los Angeles"
    price: 100,
    desc: "Looking for an efficient builder who is experienced in decking."
    user_id: 5,
)
Listing.create(
    listing_img: "https://media.istockphoto.com/photos/backyard-in-need-of-gardening-picture-id92179462?k=20&m=92179462&s=612x612&w=0&h=ZKs0G7c6mPyPPuUvmsyseKTSaOfljkt2IRkTEZ40b5o="
    title: "Backyard landscaping"
    category: "Other"
    location: "Los Angeles"
    price: 60,
    desc: "Need handyfolk to remove overgrown and unwanted bushes."
    user_id: 5,
)
3 times do 
    Listing.create(
        listing_img: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
        title: "Task Example"
        category: category.sample
        location: "Los Angeles"
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence
        user_id: rand(5..7)
    )
end

# Seattle Listings
Listing.create(
    listing_img: "https://blog.recessedlighting.com/wp-content/uploads/2014/09/living-room-layout-med.jpg"
    title: "Furniture Layout"
    category: "Design"
    location: "Seattle"
    price: 80,
    desc: "In need of new furniture layout to shop for appropriate furniture sizes."
    user_id: 8,
)
Listing.create(
    listing_img: "https://marvel-b1-cdn.bc0a.com/f00000000067111/www.probuilder.com/sites/probuilder/files/Screen%20Shot%202013-08-23%20at%201.56.17%20PM.png"
    title: "Great room wall demo"
    category: "Build"
    location: "Seattle"
    price: 100,
    desc: "Would like to survey great room wall to approve demo."
    user_id: 8,
)
3 times do 
    Listing.create(
        listing_img: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
        title: "Task Example"
        category: category.sample
        location: "Seattle"
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence
        user_id: rand(8..9)
    )
end

# New York Listings
Listing.create(
    listing_img: "https://media.istockphoto.com/photos/water-running-from-shower-head-and-faucet-in-modern-bathroom-picture-id1176125291?k=20&m=1176125291&s=612x612&w=0&h=CqxVU9inKmzoUl8AgGdRYcQTbv0UM3kAzw66h2UCw4Q="
    title: "Shower head installation"
    category: "Plumbing"
    location: "New York"
    price: 50,
    desc: "Uninstall old shower head with new handheld shower head system."
    user_id: 11,
)
Listing.create(
    listing_img: "https://media.istockphoto.com/photos/worker-carpenter-doing-laminate-floor-work-picture-id1133685683?k=20&m=1133685683&s=612x612&w=0&h=ntp0WV7VJGBlrRbfCBvHLp3i7qX6_9OKe43oZMwq3ek="
    title: "Flooring install"
    category: "Other"
    location: "New York"
    price: 80,
    desc: "Need install of new flooring throughout home."
    user_id: 11,
)
Listing.create(
    listing_img: "https://certapro.com/wp-content/uploads/cache//z_footer/3313024203.jpg"
    title: "Interior painting"
    category: "Other"
    location: "New York"
    price: 80,
    desc: "Looking for quick and efficient team to paint through home. Open to living room mural ideas."
    user_id: 11,
)
3 times do 
    Listing.create(
        listing_img: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
        title: "Task Example"
        category: category.sample
        location: "New York"
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence
        user_id: rand(10..12)
    )
end

# Boston Listings
Listing.create(
    listing_img: "https://media.istockphoto.com/photos/hand-unplugging-an-orange-cord-from-a-white-outlet-picture-id172255004?k=20&m=172255004&s=612x612&w=0&h=8YlaC1KkQDVOkYZ062w5oo8RIFfRuPCfsV3gcBA7e6I="
    title: "New outlet locations"
    category: "Electrical"
    location: "Boston"
    price: 50,
    desc: "Looking for an experienced electrician who can re-route new outlet locations throughout our home"
    user_id: 13,
)
Listing.create(
    listing_img: "https://www.mydomaine.com/thmb/Fk2OuGa8aDqoGBNPXTso97I2t1U=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/SuCasaDesign-Modern-9335be77ca0446c7883c5cf8d974e47c.jpg"
    title: "Home addition"
    category: "Design"
    location: "Boston"
    price: 90,
    desc: "Looking for an architect with a strong sense of modern design for our home's new addition."
    user_id: 13,
)
3 times do 
    Listing.create(
        listing_img: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
        title: "Task Example"
        category: category.sample
        location: "Boston"
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence
        user_id: rand(13..14)
    )
end

# Chicago Listings
Listing.create(
    listing_img: "https://media.istockphoto.com/photos/hand-unplugging-an-orange-cord-from-a-white-outlet-picture-id172255004?k=20&m=172255004&s=612x612&w=0&h=8YlaC1KkQDVOkYZ062w5oo8RIFfRuPCfsV3gcBA7e6I="
    title: "Home renovation"
    category: "Builder"
    location: "Chicago"
    price: 60,
    desc: "Our home renovation is behind. Looking for additional carpenters to get us back on schedule."
    user_id: 15,
)
Listing.create(
    listing_img: "https://images05.military.com/sites/default/files/styles/full/public/media/money/va-loans/2017/08/army-habitat-humanity-build-home.jpg"
    title: "Fixtures installation"
    category: "Plumbing"
    location: "Chicago"
    price: 80,
    desc: "Complete install of all newly baught fixtures throughout the home"
    user_id: 15,
)
3 times do 
    Listing.create(
        listing_img: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
        title: "Task Example"
        category: category.sample
        location: "Chicago"
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence
        user_id: rand(15..16)
    )
end
puts "...Listings created!"


# ---- USER CONVERSATIONS ---------
puts "Creating UserConversation data..."
  
# USER 1's Inbox
UserConversation.create(
    user_id: 1,
    conversation_id: 1
)

UserConversation.create(
    user_id: 1,
    conversation_id: 2
)

UserConversation.create(
    user_id: 1,
    conversation_id: 3
)
puts "...UserConversation created!"


# ---- CONVERSATION ---------
puts "Creating UserConversation data..."
Conversation.create(
    user_id: 1,
    conversation_id: 1
)
