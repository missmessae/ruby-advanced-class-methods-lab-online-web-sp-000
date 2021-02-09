class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

####
  def self.create
    self.class.all << self
    self
  end

  def new_by_name(name)
    @name = name
    self
  end

  def create_by_name(name)
    @name = name
    self.class.all << @name
    self
  end


end
