package hipponade

class Recipe {
    String name
    String shortDescription
    String instructions

    static belongsTo = [Tag]
    static hasMany = [tags: Tag, nutritions: NutritionFact, ingredients:RecipeIngredient, images: Image]

    static constraints = {
        name blank: false
        shortDescription blank: false, nullable: true
        instructions blank: false
    }
}

/*
 * redaktionell gepflegt
 *
 */
