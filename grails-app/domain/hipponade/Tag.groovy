package hipponade

class Tag {
    String label

//    static hasMany = [events: Event, news: News, products: Product, recipes: Recipe]
//    static belongsTo = [Product, Recipe, News, Event]
    static constraints = {
        label blank: false, unique: true, minSize: 3, maxSize: 20
//        events nullable: true
//        news nullable: true
//        products nullable: true
//        recipes nullable: true
    }

    def String toString() {
        return label
    }
}
