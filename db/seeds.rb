puts "🏠 Destroying existing seed data..."
User.destroy_all
UserPhoto.destroy_all
Listing.destroy_all
ListingPhoto.destroy_all
Conversation.destroy_all
Message.destroy_all
Review.destroy_all
UserReview.destroy_all
puts "...Ready!"

# ---- USERS ---------
puts "Creating User data..."
user_type = [ "Home Owner", "Designer", "Builder", "Plumber", "Electrician", "Other"]
location = [ "San Francisco", "Los Angeles", "Seattle", "New York", "Boston", "Chicago"]
fakeJob = Faker::Job.unique.title

# Fake Users - TOTAL: 20 / #1-20
20.times do
    fakeName = Faker::Name.unique.first_name
    User.create(
        username: fakeName,
        email: "#{fakeName}@email.com",
        password: "1234",
        user_type: user_type.sample,
        user_desc: Faker::Lorem.sentence,
        user_location: location.sample,
        user_charge: Faker::Number.between(from: 50, to: 100),
    ) 
end
# Los Angeles Home Owner sample Users - TOTAL: 3 / #21-23
User.create(
    username: "Chris",
    email: "Chris@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Radiologist living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: "n/a",
)
User.create(
    username: "Jane",
    email: "Jane@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Fintech Engineer living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: "n/a",
)
User.create(
    username: "Maria",
    email: "Maria@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Banker living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: "n/a",
)

# Seattle Home Owner sample Users - TOTAL: 2 / #24-25
User.create(
    username: "Akira",
    email: "Akira@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Public works civil engineer living in Seattle for #{rand(1..10)} years",
    user_location: "Seattle",
    user_charge: "n/a",
)
User.create(
    username: "Zoe",
    email: "Zoe@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Musician living in Seattle for #{rand(1..10)} years",
    user_location: "Seattle",
    user_charge: "n/a",
)

# New York Home Owner sample Users - TOTAL: 3 / #26-28
User.create(
    username: "Renee",
    email: "Renee@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Education services coordinator living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: "n/a",
)
User.create(
    username: "Ale",
    email: "Ale@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Social worker living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: "n/a",
)
User.create(
    username: "Brittany",
    email: "Brittany@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Events coordinator living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: "n/a",
)

# Boston Home Owner sample Users - TOTAL: 2 / #29-30
User.create(
    username: "Jordan",
    email: "Jordan@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Chef living in Boston for #{rand(1..10)} years",
    user_location: "Boston",
    user_charge: "n/a",
)
User.create(
    username: "Christian",
    email: "Christian@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Entrepreneur living in Boston for #{rand(1..10)} years",
    user_location: "Boston",
    user_charge: "n/a",
)

# Chicago Home Owner sample Users - TOTAL: 2 / #31-32
User.create(
    username: "Robyn",
    email: "Robyn@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Industrial Designer living in Chicago for #{rand(1..10)} years",
    user_location: "Chicago",
    user_charge: "n/a",
)
User.create(
    username: "Ryan",
    email: "Ryan@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Product Manager living in Chicago for #{rand(1..10)} years",
    user_location: "Chicago",
    user_charge: "n/a",
)

# Professionals - #33-37
User.create(
    username: "Kecia",
    email: "Kecia@email.com",
    password: "1234",
    user_type: "Designer",
    user_desc: "Graphic Designer professional with over 20 years experience",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Jake",
    email: "Jake@email.com",
    password: "1234",
    user_type: "Builder",
    user_desc: "Hardworking carpenter mindful of scheduling and budgets",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Robert",
    email: "Robert@email.com",
    password: "1234",
    user_type: "Plumber",
    user_desc: "Experienced in residential and commerical plumbing",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Mandy",
    email: "Mandy@email.com",
    password: "1234",
    user_type: "Electrician",
    user_desc: "Apprenticed with large construction firms and have completed over 100 contract tasks",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Durrel",
    email: "Durrel@email.com",
    password: "1234",
    user_type: "Other",
    user_desc: "Handy-man looking for extra work. Can install carpets, shades, and other misc.",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
# San Francisco Home Owner sample Users - TOTAL: 4 /#38-41
User.create(
    username: "Andrew",
    email: "Andrew@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Graphic Designer living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: "n/a",
)
User.create(
    username: "Quade",
    email: "Quade@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Data Scientist living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: "n/a",
)
User.create(
    username: "Ebri",
    email: "Ebri@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Sales Rep living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: "n/a",
)
User.create(
    username: "Donna",
    email: "Donna@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "Clinical Research Manager living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: "n/a",
)
puts "..Users created!"


# -----USER PHOTOS---------
puts "Creating UserPhotos data..."
User.all.each do |u|
    photo = UserPhoto.create!(
        user_id: u.id,
        image: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png"
    )  
    u.user_photos_id = photo.id
    u.save
end
puts "...craeted UserPhotos!"


# ---- LISTINGS ---------
puts "Creating Listing data..."
category = [ "Furniture", "Design", "Build", "Plumbing", "Electrical", "Other"]

# Los Angeles Listings
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Los Angeles",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(21..23)
    )
end
Listing.create(
    title: "Need dimmers installed",
    category: "Electrical",
    location: "Los Angeles",
    price: 40,
    desc: "Currently have switches in living room but looking for dimmers instead.",
    user_id: 21,
)
Listing.create(
    title: "Backyard deck installation",
    category: "Build",
    location: "Los Angeles",
    price: 100,
    desc: "Looking for an efficient builder who is experienced in decking.",
    user_id: 21,
)
Listing.create(
    title: "Backyard landscaping",
    category: "Other",
    location: "Los Angeles",
    price: 60,
    desc: "Need handyfolk to remove overgrown and unwanted bushes.",
    user_id: 21,
)

# Seattle Listings
2.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Seattle",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(24..25)
    )
end
Listing.create(
    title: "Furniture Layout",
    category: "Design",
    location: "Seattle",
    price: 80,
    desc: "In need of new furniture layout to shop for appropriate furniture sizes.",
    user_id: 24,
)
Listing.create(
    title: "Great room wall demo",
    category: "Build",
    location: "Seattle",
    price: 100,
    desc: "Would like to survey great room wall to approve demo.",
    user_id: 24,
)

# New York Listings
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "New York",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(26..28)
    )
end
Listing.create(
    title: "Shower head installation",
    category: "Plumbing",
    location: "New York",
    price: 50,
    desc: "Uninstall old shower head with new handheld shower head system.",
    user_id: 26,
)
Listing.create(
    title: "Flooring install",
    category: "Other",
    location: "New York",
    price: 80,
    desc: "Need install of new flooring throughout home.",
    user_id: 26,
)
Listing.create(
    title: "Interior painting",
    category: "Other",
    location: "New York",
    price: 80,
    desc: "Looking for quick and efficient team to paint through home. Open to living room mural ideas.",
    user_id: 26,
)

# Boston Listings
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Boston",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(29..30)
    )
end
Listing.create(
    title: "New outlet locations",
    category: "Electrical",
    location: "Boston",
    price: 50,
    desc: "Looking for an experienced electrician who can re-route new outlet locations throughout our home",
    user_id: 29,
)
Listing.create(
    title: "Home addition",
    category: "Design",
    location: "Boston",
    price: 90,
    desc: "Looking for an architect with a strong sense of modern design for our home's new addition.",
    user_id: 29,
)

# Chicago Listings
2.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Chicago",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(31..32)
    )
end
Listing.create(
    title: "Home renovation",
    category: "Builder",
    location: "Chicago",
    price: 60,
    desc: "Our home renovation is behind. Looking for additional carpenters to get us back on schedule.",
    user_id: 31,
)
Listing.create(
    title: "Fixtures installation",
    category: "Plumbing",
    location: "Chicago",
    price: 80,
    desc: "Complete install of all newly baught fixtures throughout the home",
    user_id: 31,
)
puts "...Listings created!"

# San Francisco listings
2.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "San Francisco",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(38..41)
    )
end
Listing.create(
    title: "Faucet repair",
    category: "Plumbing",
    location: "San Francisco",
    price: Faker::Number.between(from: 50, to: 100),
    desc: "Leaky faucet in masterbath needs fixing or replace.",
    user_id: 41,
)
Listing.create(
    title: "Kitchen design and renovation",
    category: "Design",
    location: "San Francisco",
    price: 120,
    desc: "In search of a freelance designer to create a new kitchen layout. Hoping to start construction within 3 to 4 months.",
    user_id: 41,
)
Listing.create(
    title: "Sofa reupholstering",
    category: "Other",
    location: "San Francisco",
    price: 60,
    desc: "Looking to reupholster our living room couch with vegan leather fabric.",
    user_id: 41,
)

#-----LISTING PHOTOS----------
puts "Creating ListingPhotos data..."
Listing.all.find_each do |l|
    listingphoto = ListingPhoto.create!(
        listing_id: l.id,
        image: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
    )  
    l.listing_photos_id = listingphoto.id
    l.save
    # puts l.listing_photos_id
    # puts listingphoto.id
    # puts listingphoto.image
end
puts "...created ListingPhotos!"


# ---- CONVERSATION ---------
puts "Creating Conversation data..."
Conversation.create!(
    header: "Are you still looking for help with your task?",
    user_id: 41, 
    user2_id: 35
)
# Conversation.create!(
#     header: "Are you still looking for help with your task?",
#     user_id: 10, 
#     user2_id: 9
# )
#get user and find by id on front end

# Conversation.create(
#     header: "Are you still looking for help with your task?",
#     user_1: 1,
#     user_2: 8
# )

# Conversation.create(
#     header: "Are you still looking for help with your task?",
#     user_1: 1,
#     user_2: 10
# )
puts "...Conversations created!"


# ---- MESSAGES ---------
# puts "Creating Message data..."
Message.create(
    message: "I am available this weekend to inspect.",
    conversation_id: 1,
    user_id: 41
)
Message.create(
    message: "Yes.",
    conversation_id: 1,
    user_id: 35
)
# Message.create(
#     message: "Yes",
#     conversation_id: 1,
#     sender_id: 5
#     receiver_id: 1
# )

# puts "...Message created!"
