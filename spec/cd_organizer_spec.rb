require('rspec')
require('cd_organizer')
require('cds')

describe(ArtistLibrary) do
  describe('#by_artist')
    it("displays all releases by single artist") do
        test_cd = Release.new("summer", "calvin harris")
        test_cd.save()
        test_cd2 = Release.new("outside", "calvin harris")
        test_cd2.save()
        test_library = ArtistLibrary.new(test_cd.get_artist(), [test_cd.get_album_name, test_cd2.get_album_name])
      expect(test_library.get_releases_lib()).to(eql(["summer", "outside"]))
    end
end
