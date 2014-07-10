package hipponade

// redaktionell gepflegt
class Recipe {
    String name
    String shortDescription
    String instructions
    NutritionFact nutrition
    //Product product für recipe.show   TODO

//    static belongsTo = [Tag]
    static hasMany = [tags: Tag, ingredients:RecipeIngredient, images: Image]
//    static hasOne = [nutrition: NutritionFact]

    static constraints = {
        name blank: false, nullable: false, unique: true
        shortDescription blank: false, nullable: true, maxSize: 140
        instructions blank: false, maxSize: 60000
        nutrition nullable: true
        images nullable: true
    }

    def beforeDelete = {
        nutrition?.delete(flush: true)
    }
}

