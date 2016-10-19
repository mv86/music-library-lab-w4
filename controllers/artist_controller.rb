require_relative '../models/artist'

#INDEX
#get new page with all albums
get '/artists' do
  @artists = Artist.all()
  erb(:'artists/index')
end

#NEW
#get new page with album form
get '/artists/new' do
  erb(:'artists/new')
end

#CREATE
#post new album to database
post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  erb(:'artists/create')
end

#SHOW
#get single album by id
get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:'artists/show')
end

get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:'artists/edit')
end

put '/artists/:id' do
  @artist = Artist.update(params)
  redirect to ("/artists/#{params[:id]}")
end