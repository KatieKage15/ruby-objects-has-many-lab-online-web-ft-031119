class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    post.artist = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def post
    Post.all.select {|post| post.author == self}
  end

  def post_count
    post.all.count
  end
end
