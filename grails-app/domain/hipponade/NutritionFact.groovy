package hipponade

class NutritionFact {

    float fat
    float protein
    float carbs
    int   calories
    float fiber
    Product product
    Recipe  recipe

    //static hasOne = [product: Product, recipe: Recipe]

    static constraints = {
        calories nullable: false
        protein nullable: false
        carbs nullable: false
        fiber nullable: false
        fat nullable: false
        product(nullable: true, validator: {val, obj -> !(val && obj.recipe)}) // Darf nur einem von beiden zugeordnet sein
        recipe nullable: true
    }



}
