package hipponade

class Image {
    String fileName
    Recipe recipe
    Event event
    Product product

    //static belongsTo = [Product, Recipe]
   // static hasOne = [recipe: Recipe, event: Event, product: Product]
    static constraints = {
        // Limit upload file size to 2MB
        fileName blank: false, nullable: false
        recipe nullable: true
        event nullable: true
        product nullable: true
    }

    def beforeDelete() {
        def file = new File('./grails-app/assets/images/products/' + fileName)
        file.delete()
    }
}
