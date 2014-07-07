package hipponade

class Product {
    String name
    String description
    String css

    static belongsTo = [Tag]
    static hasMany = [images: Image, nutritions: NutritionFact, ingredients: Ingredient, store: Store, tags: Tag] // Siegel wird in Tags gespeichert und bei der Seitengenerierung dynamisch abgefragt


    static constraints = {
        name()
        description()
        css(widget: 'textarea')
    }
}
