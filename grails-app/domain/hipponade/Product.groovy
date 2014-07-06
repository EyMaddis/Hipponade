package hipponade

class Product {
    String name
    String description
    String css
    Image  image

    static hasMany = [retailer: Store, tags: Tag] // Siegel wird in Tags gespeichert und bei der Seitengenerierung dynamisch abgefragt


    static constraints = {
        name()
        description()
        css(widget: 'textarea')
    }
}
