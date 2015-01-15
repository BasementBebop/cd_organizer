require('rspec')
require('cds')


  describe(Release) do
  before() do
  Release.clear()
end



  describe('#get_album_name') do
    it('finds name of albume') do
      test_cd = Release.new("summer", "calvin harris")
      expect(test_cd.get_album_name()).to(eq("summer"))
      end
    end

    describe('.all') do
      it('has no releases') do
        expect(Release.all()).to(eq([]))
      end
    end

    describe('.list_all') do
      it('shows all releases') do
        test_cd = Release.new("summer", "calvin harris")
        test_cd.save()
        test_cd2 = Release.new("outside", "calvin harris")
        test_cd2.save()
        expect(Release.list_all()).to(eql([test_cd, test_cd2]))
      end
    end


  describe('#save') do
    it('adds new release to all releases') do
      test_cd = Release.new("summer", "calvin harris")
      test_cd.save()
      expect(Release.all()).to(eq([test_cd]))
    end
  end
    describe(".search") do
    it("lets user search artist and get album information ") do
      test_cd = Release.new("summer", "calvin harris")
      test_cd.save()
    expect(Release.search("summer")).to(eq("calvin harris"))
   end
  end


    describe('.clear') do
    it("clears the entry") do
      test_cd = Release.new("summer", "calvin harris")
      Release.clear()
      expect(Release.all()).to(eq([]))
    end
  end
end
