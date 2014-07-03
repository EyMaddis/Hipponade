package hipponade

class Product {
    String name
    String description
    String css

    static hasMany = [retailer: Store, tags: Tag] // Siegel wird in Tags gespeichert und bei der Seitengenerierung dynamisch abgefragt


    static constraints = {

    }
}
