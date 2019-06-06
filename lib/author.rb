class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_name(name)
    post = Post.new(name)
    @posts << post
    post.author = self
  end

  @@count = 1

  def self.post_count
    @@count += 1
    return @@count
  end

end
