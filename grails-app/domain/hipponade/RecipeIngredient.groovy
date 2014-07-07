package hipponade

class RecipeIngredient {

    Ingredient ingredient
    String type
    int    amount

    static belongsTo = [Ingredient]
    static constraints = {
        ingredient()
        type nullable: false, blank: false, inList: ["g", "ml", "kg", "l", "Tl", "Tasse", "Prise", "cl"]
        amount min: 1
    }
}
