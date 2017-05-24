module PostsHelper

  def count
    Post.all.each do |post|
      puts post.comments.size
    end
  end
end
