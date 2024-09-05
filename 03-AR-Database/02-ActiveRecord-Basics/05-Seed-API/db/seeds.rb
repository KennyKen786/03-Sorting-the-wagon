require "json"
require "rest-client"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
top_stories_url = 'https://hacker-news.firebaseio.com/v0/topstories.json'
response = RestClient.get(top_stories_url)
top_story_ids = JSON.parse(response.body)

top_story_ids.first(10).each do |id|
  post_url = "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
  post_response = RestClient.get(post_url)
  post_details = JSON.parse(post_response.body)

  Post.create(
    title: post_details['title'],
    url: post_details['url'],
    votes: post_details['score'] || 0
  )
end
