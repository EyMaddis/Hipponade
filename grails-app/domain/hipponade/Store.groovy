package hipponade

class Store {
    String name
    String street1
    String street2
    String city
    int zipCode
    String country = "Deutschland"
    double longitude // for Google Maps
    double latitude
    String website


    static belongsTo = Product
    static hasMany = [products: Product]

    static constraints = {
        name blank: false, nullable: false, range: 10..100
        street1 blank: false, nullable: false
        street2 blank: true, nullable: true
        city blank: false, nullable: false
        zipCode()
        country()
        longitude()
        latitude()
        website(url: true, blank: true, nullable: true)
    }
}
