package hipponade

/**
 * Created by nelsontavaresdesousa on 01.07.14.
 */
class News {
    String headline
    String content
    Date   releaseDate

    static hasMany = [tags: Tag]

    static constraints = {

    }
}
