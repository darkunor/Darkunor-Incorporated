
require 'pry-byebug'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

before do
  @db = PG.connect(dbname: 'todo_app', host: 'localhost')
end

after do
  @db.close
end

get '/' do
  redirect to('/items')
end

get '/items' do
  sql = "select * from items"
  @items = @db.exec(sql)

  erb :index
end

get '/items/new' do
  erb :new
end

post '/items' do
  title = params[:title]
  details = params[:details]

  sql = "insert into items (title, details) values ('#{title}', '#{details}')"

  @db.exec(sql)

  redirect to('/items') # or can you get the id of the record created by the insert, and redirect to that?
end

get '/items/:id' do
  sql = "select * from items where id = #{params[:id].to_i}"
  @item = @db.exec(sql).first

  erb :show
end

get '/items/:id/edit' do
  erb :edit
end

post '/items/:id' do
  redirect to("/show/#{params[:id]}")
end

get '/items/:id/delete' do
  sql = "delete from items where id = #{params[:id].to_i}"

    @db.exec(sql)

  redirect to('/')
end












