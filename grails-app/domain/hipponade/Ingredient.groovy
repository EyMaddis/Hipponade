package hipponade

class Ingredient {
    String name

    static constraints = {
        name blank: false
    }
}
