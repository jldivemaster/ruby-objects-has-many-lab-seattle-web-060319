class Post

  attr_accessor :name, :author

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

  def self.all
    @@all
  end

end
