#  TODO: Define your Controller Class here, to orchestrate the other classes
class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def add
    name = @view.ask_for_name
    description = @view.ask_for_description
    recipe = Recipe.new(name, description)
    @cookbook.create(recipe)
  end

  def remove
    list
    index = @view.ask_for_index
    @cookbook.destroy(index)
  end
end
