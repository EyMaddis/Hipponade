package hipponade

class RecipeIngredient {

    Ingredient ingredient
    String type
    int    amount

    static belongsTo = [Ingredient]
    static constraints = {
        ingredient()
        type(inList: ["g", "ml", "kg", "l", "Tl", "Tasse", "Prise", "cl"])
        amount()
    }
}
