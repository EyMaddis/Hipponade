package hipponade

class Tag {
    String label


    static hasMany = [events: Event, news: News, products: Product, recipes: Recipe]
    static constraints = {
        label(blank: false)
    }
}
