require_relative '../models/album'

#INDEX
#get new page with all albums
get '/albums' do
  @albums = Album.all()
  erb(:'albums/index')
end

#NEW
#get new page with album form
get '/albums/new' do
  erb(:'albums/new')
end

#CREATE
#post new album to database
post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:'albums/create')
end

#SHOW
#get single album by id

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb(:'albums/show')
end