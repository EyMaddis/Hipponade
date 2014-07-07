package hipponade

// redaktionell gepflegt
class Recipe {
    String name
    String shortDescription
    String instructions

    static belongsTo = [Tag]
    static hasMany = [tags: Tag, nutritions: NutritionFact, ingredients:RecipeIngredient, images: Image]

    static constraints = {
        name blank: false, nullable: false, unique: true
        shortDescription blank: false, nullable: true, maxSize: 140
        instructions blank: false, maxSize: 60000
    }
}

