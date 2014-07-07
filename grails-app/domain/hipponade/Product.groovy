package hipponade

class Product {
    String name
    String description
    String css

    static belongsTo = [Tag]
    static hasMany = [images: Image, ingredients: Ingredient, store: Store, tags: Tag, recipes: Recipe] // Siegel wird in Tags gespeichert und bei der Seitengenerierung dynamisch abgefragt
    static hasOne = [nutrition: NutritionFact]

    static constraints = {
        name unique: true, nullable: false, blank: false, maxSize: 100
        description blank: true, nullable: true
        css widget: 'textarea', blank: true, nullable: true
        store nullable: true
        recipes nullable: true
    }
}
