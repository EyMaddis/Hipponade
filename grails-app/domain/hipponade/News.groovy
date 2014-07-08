package hipponade

class News {
    String headline
    String content
    Date   date = new Date()
    User   author

    static hasMany = [tags: Tag]
//    static belongsTo = [Tag, User]

    static constraints = {
        headline blank: false, maxSize: 140, nullable: false
        content nullable: false, blank: false, maxSize: 60000
        date()
        author nullable: false
    }
}
