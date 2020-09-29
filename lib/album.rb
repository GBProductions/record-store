class Album
  attr_reader :id, :name #Our new save method will need reader methods.

  @@albums = {}
  @@total_rows = 0 # We've added a class variable to keep track of total rows and increment the value when an ALbum is added.

#   before(:each) do
#   @album = Album.new( create a new album )
# end

  def initialize(name, id) # We've added id as a second parameter.
    @name = name
    @id = id || @@total_rows += 1  # We've added code to handle the id.
  end

  def self.all
    @@albums.values()
  end

  def save
    @@albums[self.id] = Album.new(self.name, self.id)
  end

  def ==(album_to_compare)
    self.name() == album_to_compare.name()
  end

  def self.clear
    @@albums = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@albums[id]
  end

  def self.search(name)
    @@albums.each_pair do |array|
      if name == array[1].name
        return array[1]
      end
    end
  end

  def update(name)
    @name = name
  end
  def delete
    @@albums.delete(self.id)
  end

end
