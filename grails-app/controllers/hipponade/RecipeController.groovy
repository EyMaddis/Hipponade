package hipponade

class RecipeController {
    static scaffold = true

    def print(Recipe recipeInstance) {
        respond recipeInstance
    }
}
