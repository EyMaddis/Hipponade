package hipponade

class Nutrition { // TODO:merge into product?
    float fat
    float fibre
    float protein
    float sugar
    float carbs
    int calories

    static belongsTo = Product

    static constraints = {
    }
}
