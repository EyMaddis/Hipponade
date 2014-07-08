package hipponade

class Event{
    String name
    String description
    String location
    Date   date
    Date   dateCreated = new Date()

//    static belongsTo = [Image, Tag]
    static hasMany = [images: Image, tags: Tag]

    static constraints = {
        name nullable: false, blank: false, maxSize: 140
        description nullable: false, blank: false
        location widget: 'textarea'
        date nullable: false
        dateCreated display: false, editable: false, max: new Date() // max today
    }
}
