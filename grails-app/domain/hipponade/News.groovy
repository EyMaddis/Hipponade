package hipponade

class News {
    String headline
    String content
    Date   releaseDate

    static hasMany = [tags: Tag]
//    static belongsTo = User

    static constraints = {
        headline(blank: false)
    }
}
