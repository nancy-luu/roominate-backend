puts "🏠 Destroying existing seed data..."
User.destroy_all
Listing.destroy_all
UserConversation.destroy_all
Conversation.destroy_all
Message.destroy_all
UserReview.destroy_all
Review.destroy_all
puts "...Ready!"


