require("pry")
require_relative("../models/artists")
require_relative("../models/albums")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Bob Marley'
  })
artist1.save()

artist2 = Artist.new({
  'name' => 'Queen'
  })
artist2.save()

album1 = Album.new({
  'artist_id' => artist1.id,
  'name' => 'exodus',
  'genre' => 'reggae'
  })
album1.save()

album2 = Album.new({
  'artist_id' => artist2.id,
  'name' => 'jazz',
  'genre' => 'rock'
  })
album2.save()

album3 = Album.new({
  'artist_id' => artist1.id,
  'name' => 'Uprising',
  'genre' => 'reggae'
  })
album3.save()


binding.pry
nil
