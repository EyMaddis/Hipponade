package hipponade

class Image {
    String fileName
    //static belongsTo = [Product, Recipe]
   // static hasOne = [recipe: Recipe, event: Event, product: Product]
    static constraints = {
        // Limit upload file size to 2MB
        fileName blank: false, nullable: false
    }

    def beforeDelete() {
        def file = new File('./grails-app/assets/images/products/' + fileName)
        file.delete()
    }
}
