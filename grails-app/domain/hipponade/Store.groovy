package hipponade

class Store {
    String name
    String street
    String city
    int zipCode
    double longitude // for Google Maps
    double latitude


    static belongsTo = Product
    static hasMany = [products: Product]

    static constraints = {

    }
}
