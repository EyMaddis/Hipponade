package hipponade

class Product {
    String name
    String text
    String ingredients

    static hasMany = [retailer: Retailer]

    static constraints = {

    }
}
