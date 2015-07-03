class Recipe < DBBase
attributes name: :string, cost: :string,
description: :text,
category_id: :integer 

  def self.table_name
    :recipes
  end

  def initialize(params={})
    @id = params['id']
    @name = params['name']
  @cost = params['cost']
  @description = params['description']
  @category_id = params['category_id']  
  end

def category
 Category.find(category_id) || Category.new
 end
end