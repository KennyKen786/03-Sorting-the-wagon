require "faker"
# TODO: Write a seed to insert 100 posts in the database
100.times do
  Post.create(
    title: Faker::Book.title,
    url: Faker::Internet.url,
    votes: rand(1..100)
  )
end
