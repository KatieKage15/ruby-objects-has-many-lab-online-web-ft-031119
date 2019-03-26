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
    @posts << post
    post.artist = self
  end

  def add_post_by_name(post)
    post = Post.new(name)
    @post << post
    post.author = self
  end

  def post
    Song.all.select {|post| post.author == self}
  end

  def post_count
    post.all.count
  end
end
