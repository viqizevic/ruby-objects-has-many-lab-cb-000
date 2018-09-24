class Author
  attr_accessor :name, :posts

  @@total_posts = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @@total_posts += 1
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@total_posts
  end
end
