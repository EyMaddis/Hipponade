package hipponade

class Tag {
    String label

    static constraints = {
        label(blank: false)
    }
}
