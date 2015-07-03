require 'pry-byebug'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

before do
  @db = PG.connect(dbname: 'memetube_app', host: 'localhost')
end 

after do
  @db.close
end

get '/' do
  redirect to ('/videos')
end 


get '/videos' do 
  sql = "select * from videos"
  @videos = @db.exec(sql)
  
  erb :home
end

get '/videos/:id' do 
  sql = "select * from videos where id = #{params[:id]}" 
  @video = @db.exec(sql)[0]
  erb :video
end


get '/videos/new' do
  erb :new
end

post '/videos/:id' do
  title = params[:title]
  desc = params[:desc]
  yt_id = params[:youtube_id]
  sql = "update videos set title = '#{title}', description = '#{desc}', youtube_id = '#{yt_id}' where id = #{params[:id]}"
  @db.exec(sql)
  redirect to("/videos/#{params[:id]}")
end

post '/videos' do
  title = params[:title]
  description = params[:description]
  videoid = params[:videoid]
  genre = params[:genre]

  sql = "insert into videos (title, description, videoid, genre) values ('#{title}', '#{description}', '#{videoid}', '#{genre}')"
  
  @videos = @db.exec(sql)

  redirect to('/videos')
end

