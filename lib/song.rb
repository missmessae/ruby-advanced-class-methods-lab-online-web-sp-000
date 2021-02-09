class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.Song.all << self
  end

####
  def self.create(song)
      save
    @@all
  end

  def new_by_name(name)
    @name = name
    self
  end

  def create_by_name(name)
    @name = name
    self.Song.all << @name
    self
  end


end
