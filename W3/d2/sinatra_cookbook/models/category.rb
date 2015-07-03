class Category < DBBase
attributes name: :string, cost: :string

  def self.table_name
    :categories
  end

  def initialize(params={})
    @id = params['id']
    @name = params['name']
  @cost = params['cost']
  end
end