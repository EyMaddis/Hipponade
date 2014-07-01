package hipponade

class Tag {
    String name

    static constraints = {
        name(blank: false)
    }
}
