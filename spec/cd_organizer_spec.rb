require('rspec')
require('cd_organizer')
require('cds')

describe(ArtistLibrary) do
  describe('#get_releases_lib')
    it("displays all releases by single artist") do
        test_cd = Release.new("summer", "calvin harris")
        test_cd.save()
        test_cd2 = Release.new("outside", "calvin harris")
        test_cd2.save()
        test_library = ArtistLibrary.new(test_cd.get_artist(), [test_cd.get_album_name, test_cd2.get_album_name])
      expect(test_library.get_releases_lib()).to(eql(["summer", "outside"]))
    end
  describe('#get_artist_lib')
    it("displays artist name of release library") do
      test_cd = Release.new("summer", "calvin harris")
      test_cd.save()
      test_cd2 = Release.new("outside", "calvin harris")
      test_cd2.save()
      test_library = ArtistLibrary.new(test_cd.get_artist(), [test_cd.get_album_name, test_cd2.get_album_name])
      expect(test_library.get_artist_lib()).to(eql("calvin harris"))
    end
end


#(compiles list of albums into a library, then displays the names of the albums)
