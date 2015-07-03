get '/ingredients' do
  @ingredients = Ingredient.all
  erb :'ingredients/index'
end

get '/ingredients/new' do
  @ingredient = Ingredient.new
  @recipes = Recipe.all
  erb :'ingredients/new'
end

post '/ingredients' do
  @ingredient = Ingredient.new(params[:ingredient])
  @ingredient.save
  redirect to('/ingredients')
end


get '/ingredients/:id/edit' do
  @ingredient = Ingredient.find(params[:id])
  @recipes = Recipe.all
  erb :'ingredients/edit'
end

post '/ingredients/:id' do
  @ingredient = Ingredient.find(params[:id].to_i)
  @ingredient.update_attributes(params[:ingredient])
  redirect to("/ingredients")
end

post '/ingredients/:id/delete' do
  Ingredient.find(params[:id]).destroy
  redirect to('/ingredients')
end