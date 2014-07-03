package hipponade

class Recipe {
    String name
    String shortDescription
    String instructions

    static hasMany = [tags: Tag, ingredients:Ingredient, images: Image]

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
