package hipponade

class Ingredient {
    String name

    static belongsTo = [Product, RecipeIngredient]
    static hasMany = [products: Product, recipeIngredients: RecipeIngredient]
    static constraints = {
        name blank: false, nullable: false
    }
}
