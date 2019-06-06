class Song

  attr_accessor :name, :artist

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.respond_to?(:artist)
      self.artist.name
    else
      nil
    #if !self.attribute?(:artist)
    #  nil
    end
  end

end
