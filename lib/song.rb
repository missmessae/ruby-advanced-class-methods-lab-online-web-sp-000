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

  def self.new_by_name(title)
      song = self.create
      song.name = title
      song
  end

  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end

  def self.find_by_name(title)
    self.all.detect {|song| song.name == title}
  end

  def self.find_or_create_by_name(title)
    if self.find_by_name == false
      self.create_by_name
    else
    end
  end


end
