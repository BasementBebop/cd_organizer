class ArtistLibrary

  @@all_libraries = []

  attr_reader(:artist_name, :album_names)

  define_method(:initialize) do |artist_name, album_names|
    @album_names = album_names
    @artist_name = artist_name
  end

  define_method(:get_artist_lib) do
    @artist_name
  end

  define_method(:get_releases_lib) do
    @album_names
  end


end
