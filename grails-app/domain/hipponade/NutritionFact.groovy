package hipponade

class NutritionFact {

    float fat
    float protein
    float carbs
    int   calories
    float fiber
//    Product product
//    Recipe  recipe

    //static hasOne = [product: Product, recipe: Recipe]
    static belongsTo = [Product, Recipe]
    static constraints = {
        calories nullable: false
        protein nullable: false
        carbs nullable: false
        fiber nullable: false
        fat nullable: false

        // Darf nur einem von beiden zugeordnet sein
//        product nullable: true, validator: {val, obj -> !(val && obj.recipe)}
//        recipe nullable: true
    }



}
