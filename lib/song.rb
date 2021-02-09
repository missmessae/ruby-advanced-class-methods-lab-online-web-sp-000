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
  def self.create
      song = self.new
      self.all << song
      song
  end

  def self.new_by_name(name)
    name = self.new
    @name = name
  end

  def create_by_name(name)
    @name = name
    self.Song.all << @name
    self
  end


end
