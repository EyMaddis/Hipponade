package hipponade

class Event{
    String name
    String description
    String location
    Date   date
    Date   dateCreated = new Date()

    static belongsTo = [Image, Tag]
    static hasMany = [images: Image, tags: Tag]

    static constraints = {
        name()
        description()
        location()
        date()
        dateCreated()
    }
}
