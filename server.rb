require "sinatra"


get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about_me
end

get '/favorites' do
  @fav_links = ["www.theultralinx.com", "www.twitter.com/mrbenjaminhoppe"]
  erb :favorite
end

get '/' do
  redirect to('home')
end

get '/gallery' do
  redirect to('portfolio')
end
