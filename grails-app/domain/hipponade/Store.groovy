package hipponade

class Store {
    String name
    String street1
    String street2
    String city
    int zipCode
    String country
    double longitude // for Google Maps
    double latitude
    String website


    static belongsTo = Product
    static hasMany = [products: Product]

    static constraints = {

    }
}
