require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

class Album
  attr_reader :name
  ...
  def ==(other_album)
    self.name.eql?(other_album.name) && self.artist.eql?(other_album.artist) && self.year.eql?(other_album.year)
  end
end

