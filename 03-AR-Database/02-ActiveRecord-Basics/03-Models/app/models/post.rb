class Post < ActiveRecord::Base
end

class PostsController
  def index
    @posts = Post.all
    @posts.each do |post|
      puts "Title: #{post.title}, Content: #{post.content}"
    end
  end

  def create(title, content)
    Post.create(title: title, content: content)
  end

  def show(id)
    post = Post.find_by(id: id)
    if post
      puts "Title: #{post.title}, Content: #{post.content}"
    else
      puts "Post not found"
    end
  end

  def delete(id)
    post = Post.find_by(id: id)
    post.destroy if post
  end
end
