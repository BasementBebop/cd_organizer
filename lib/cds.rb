class Release

  @@all_releases = []

  attr_reader(:album_name, :artist)

  define_method(:initialize) do |album_name, artist|
    @album_name = album_name
    @artist = artist
    # @id = @@all_releases.length() + 1
  end
  define_method(:save) do
    @@all_releases.push(self)
  end
  define_method(:get_album_name) do
    @album_name
  end

  define_method(:get_artist) do
    @artist
  end

  # define_method(:get_id) do
  #   @id
  # end

  define_singleton_method(:all) do
    @@all_releases
  end

  define_singleton_method(:list_all) do
    @@all_releases
  end

  define_singleton_method(:search) do |find_it|
    info = ""
    @@all_releases.each() do |releases|
      if releases.get_album_name.eql?(find_it)
        info = releases.get_artist
      end
    end
    info
  end

    define_singleton_method(:clear) do
    @@all_releases = []
  end
end
