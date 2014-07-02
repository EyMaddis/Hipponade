package hipponade

class Ingredient {
    String name

    List<IngredientPart> ingredientsPart = []
    List<Recipe> recipes = []


    static constraints = {
        name blank: false
    }
}
