package hipponade

class Recipe {
    String name
    String shortDescription
    String instructions

    static hasMany = [tags: Tag, ingredients:Ingredient]

    List ingredients = []
    List tags = []

    static constraints = {
        tags nullable: true
        ingredients
        name blank: false
        shortDescription blank: false, nullable: true
        instructions blank: false
    }
}
