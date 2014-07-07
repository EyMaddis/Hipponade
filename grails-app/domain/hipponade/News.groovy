package hipponade

class News {
    String headline
    String content
    Date   date
    User   author

    static hasMany = [tags: Tag]
    static belongsTo = [Tag, User]

    static constraints = {
        headline(blank: false)
        content()
        date()
        author()
    }
}
