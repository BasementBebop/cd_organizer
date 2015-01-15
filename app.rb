require('sinatra')
require('sinatra/reloader')
require('./lib/cds')
require('./lib/cd_organizer')
also_reload('./lib/**/*.rb')


get('/') do

to_save = Release.new('artist_name', 'album_name')
to_save.save()

@list = Release.list_all()
erb(:form)
end

post("/artist") do
  artist_name = params.fetch("artist_name")
  album_name = params.fetch("album_name")
  test_cd = Release.new(artist_name, album_name)
  test_cd.save()
  erb(:success)
end
