user_one = User.create!(name: Faker::Name.name)
user_two = User.create!(name: Faker::Name.name)
user_three = User.create!(name: Faker::Name.name)
user_four = User.create!(name: Faker::Name.name)
user_five = User.create!(name: Faker::Name.name)

users = [user_one, user_two, user_three, user_four, user_five]

# Create fake posts for the given users
(1..10).each do |i|
  Post.create!(
    user: users.sample,
    title: Faker::Hacker.say_something_smart,
    text: Faker::Hipster.paragraphs(20).join(" "),
    created_at: Faker::Date.backward(1.year)
  )
end

# Create fake comments for the given posts
Post.all.each do |post|
  (1..rand(2..8)).each do
    Comment.where(
      post: post,
      user: (users - [post.user]).sample,
      text: Faker::Hacker.say_something_smart
    ).first_or_create!(
      created_at: Faker::Date.between(post.created_at, Date.today)
    )
  end
end
