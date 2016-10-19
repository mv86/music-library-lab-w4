require_relative '../models/album'

get '/albums' do
  @albums = Album.all()
  erb(:'albums/index')
end

get '/albums/new' do
  erb(:'albums/new')
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:'albums/create')
end

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb(:'albums/show')
end

get '/albums/:id/edit' do
  @album = Album.find(params[:id])
  erb(:'artists/edit')
end

put '/albums/:id' do
  @album = Album.update(params)
  redirect to ("/albums/#{params[:id]}")
end

delete '/albums/:id' do
  Album.delete(params[:id])
  redirect to ("/albums")
end