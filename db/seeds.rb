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

# San Francisco Home Owner sample Users - TOTAL: 4 /#1-4
User.create(
    username: "Donna",
    email: "Donna@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Andrew",
    email: "Andrew@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Quade",
    email: "Quade@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Ebri",
    email: "Ebri@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in San Francisco for #{rand(1..10)} years",
    user_location: "San Francisco",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Los Angeles Home Owner sample Users - TOTAL: 3 / #5-7
User.create(
    username: "Chris",
    email: "Chris@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Jane",
    email: "Jane@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Maria",
    email: "Maria@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Los Angeles for #{rand(1..10)} years",
    user_location: "Los Angeles",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Seattle Home Owner sample Users - TOTAL: 2 / #8-9
User.create(
    username: "Akira",
    email: "Akira@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Seattle for #{rand(1..10)} years",
    user_location: "Seattle",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Zoe",
    email: "Zoe@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Seattle for #{rand(1..10)} years",
    user_location: "Seattle",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# New York Home Owner sample Users - TOTAL: 3 / #10-12
User.create(
    username: "Renee",
    email: "Renee@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Ale",
    email: "Ale@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Brittany",
    email: "Brittany@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in New York for #{rand(1..10)} years",
    user_location: "New York",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Boston Home Owner sample Users - TOTAL: 2 / #13-14
User.create(
    username: "Jordan",
    email: "Jordan@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Boston for #{rand(1..10)} years",
    user_location: "Boston",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Christian",
    email: "Christian@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Boston for #{rand(1..10)} years",
    user_location: "Boston",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Chicago Home Owner sample Users - TOTAL: 2 / #15-16
User.create(
    username: "Robyn",
    email: "Robyn@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Chicago for #{rand(1..10)} years",
    user_location: "Chicago",
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "Ryan",
    email: "Ryan@email.com",
    password: "1234",
    user_type: "Home Owner",
    user_desc: "#{fakeJob} living in Chicago for #{rand(1..10)} years",
    user_location: "Chicago",
    user_charge: Faker::Number.between(from: 50, to: 100),
)

# Professionals - #17-41
User.create(
    username: "Kecia",
    email: "Kecia@email.com",
    password: "1234",
    user_type: "Designer",
    user_desc: "Knowledgeable professional with over 20 years experience",
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
    username: "Madi",
    email: "Madi@email.com",
    password: "1234",
    user_type: "Electrician",
    user_desc: "Apprenticed with large construction firms and have completed over 100 contract tasks",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
User.create(
    username: "James",
    email: "James@email.com",
    password: "1234",
    user_type: "Other",
    user_desc: "Handy-man looking for extra work. Can install carpets, shades, and other misc.",
    user_location: location.sample,
    user_charge: Faker::Number.between(from: 50, to: 100),
)
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
puts "..Users created!"


# -----USER PHOTOS---------
puts "Creating UserPhotos data..."
User.all.each do |u|
    photo = UserPhoto.create!(
        user_id: u.id,
        image: "https://nanuntio.com/wp-content/uploads/2020/03/service_default_avatar_182956.png"
    )  
    u.user_photos_id = photo.id
end
puts "...craeted UserPhotos!"



# ---- LISTINGS ---------
puts "Creating Listing data..."
category = [ "Furniture", "Design", "Build", "Plumbing", "Electrical", "Other"]

# San Francisco listings
Listing.create(
    title: "Faucet repair",
    category: "Plumbing",
    location: "San Francisco",
    price: Faker::Number.between(from: 50, to: 100),
    desc: "Leaky faucet in masterbath needs fixing or replace.",
    user_id: 1,
)
Listing.create(
    title: "Kitchen design and renovation",
    category: "Design",
    location: "San Francisco",
    price: 120,
    desc: "In search of a freelance designer to create a new kitchen layout. Hoping to start construction within 3 to 4 months.",
    user_id: 1,
)
Listing.create(
    title: "Sofa reupholstering",
    category: "Other",
    location: "San Francisco",
    price: 60,
    desc: "Looking to reupholster our living room couch with vegan leather fabric.",
    user_id: 1,
)
4.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "San Francisco",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(1..4)
    )
end
# Los Angeles Listings
Listing.create(
    title: "Need dimmers installed",
    category: "Electrical",
    location: "Los Angeles",
    price: 40,
    desc: "Currently have switches in living room but looking for dimmers instead.",
    user_id: 5,
)
Listing.create(
    title: "Backyard deck installation",
    category: "Build",
    location: "Los Angeles",
    price: 100,
    desc: "Looking for an efficient builder who is experienced in decking.",
    user_id: 5,
)
Listing.create(
    title: "Backyard landscaping",
    category: "Other",
    location: "Los Angeles",
    price: 60,
    desc: "Need handyfolk to remove overgrown and unwanted bushes.",
    user_id: 5,
)
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Los Angeles",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(5..7)
    )
end

# Seattle Listings
Listing.create(
    title: "Furniture Layout",
    category: "Design",
    location: "Seattle",
    price: 80,
    desc: "In need of new furniture layout to shop for appropriate furniture sizes.",
    user_id: 8,
)
Listing.create(
    title: "Great room wall demo",
    category: "Build",
    location: "Seattle",
    price: 100,
    desc: "Would like to survey great room wall to approve demo.",
    user_id: 8,
)
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Seattle",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(8..9)
    )
end

# New York Listings
Listing.create(
    title: "Shower head installation",
    category: "Plumbing",
    location: "New York",
    price: 50,
    desc: "Uninstall old shower head with new handheld shower head system.",
    user_id: 11,
)
Listing.create(
    title: "Flooring install",
    category: "Other",
    location: "New York",
    price: 80,
    desc: "Need install of new flooring throughout home.",
    user_id: 11,
)
Listing.create(
    title: "Interior painting",
    category: "Other",
    location: "New York",
    price: 80,
    desc: "Looking for quick and efficient team to paint through home. Open to living room mural ideas.",
    user_id: 11,
)
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "New York",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(10..12)
    )
end

# Boston Listings
Listing.create(
    title: "New outlet locations",
    category: "Electrical",
    location: "Boston",
    price: 50,
    desc: "Looking for an experienced electrician who can re-route new outlet locations throughout our home",
    user_id: 13,
)
Listing.create(
    title: "Home addition",
    category: "Design",
    location: "Boston",
    price: 90,
    desc: "Looking for an architect with a strong sense of modern design for our home's new addition.",
    user_id: 13,
)
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Boston",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(13..14)
    )
end

# Chicago Listings
Listing.create(
    title: "Home renovation",
    category: "Builder",
    location: "Chicago",
    price: 60,
    desc: "Our home renovation is behind. Looking for additional carpenters to get us back on schedule.",
    user_id: 15,
)
Listing.create(
    title: "Fixtures installation",
    category: "Plumbing",
    location: "Chicago",
    price: 80,
    desc: "Complete install of all newly baught fixtures throughout the home",
    user_id: 15,
)
3.times do 
    Listing.create(
        title: "Task Example",
        category: category.sample,
        location: "Chicago",
        price: Faker::Number.between(from: 50, to: 100),
        desc: Faker::Lorem.sentence,
        user_id: rand(15..16)
    )
end
puts "...Listings created!"

#-----LISTING PHOTOS----------
puts "Creating ListingPhotos data..."
Listing.all.find_each do |l|
    listingphoto = ListingPhoto.create!(
        listing_id: l.id,
        image: "https://media.istockphoto.com/vectors/home-icon-flat-vector-illustration-design-vector-id1162202962?k=20&m=1162202962&s=170667a&w=0&h=q9Y9VlP2pgoJOpSdwLLTIS64_cyREBOULeVXf2OtBuU="
    )  
    l.listing_photos_id = listingphoto.id
end
puts "...created ListingPhotos!"


# ---- CONVERSATION ---------
puts "Creating Conversation data..."
Conversation.create(
    header: "Are you still looking for help with your task?",
    user_1: 1,
    user_2: 5
)

Conversation.create(
    header: "Are you still looking for help with your task?",
    user_1: 1,
    user_2: 8
)

Conversation.create(
    header: "Are you still looking for help with your task?",
    user_1: 1,
    user_2: 10
)
puts "...Conversations created!"


# # ---- MESSAGES ---------
# puts "Creating Message data..."
# Message.create(
#     message: "I am available this weekend to inspect.",
#     sender_id: 5,
#     conversation_id: 1
# )
# puts "...Message created!"
