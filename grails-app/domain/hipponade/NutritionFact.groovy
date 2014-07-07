package hipponade

class NutritionFact {

    float fat
    float protein
    float carbs
    int   calories
    float fiber

    static belongsTo = [Product, Recipe]
    static hasMany = [products: Product, recipes: Recipe]

    static constraints = {
        calories nullable: false
        protein nullable: false
        carbs nullable: false
        fiber nullable: false
        fat nullable: false
    }
}
