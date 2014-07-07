package hipponade

class NutritionFact {

    float fat
    float protein
    float carbs
    int   calories
    float fiber

    static belongsTo = [Product, RecipeIngredient]
    static hasMany = [products: Product, recipes: Recipe]
    static constraints = {
        calories()
        protein()
        carbs()
        fiber()
        fat()
    }
}
