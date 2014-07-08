import hipponade.Image
import hipponade.Product
import hipponade.User

class BootStrap {

    def init = { servletContext ->

        def User user = new User(username: "test", password: "test")
        user.save(flush: true, failOnError: true)

        def Product prod = new Product(name: "Colanade", shortDescription: "Nullam id dolor id nibh ultricies vehicula ut id elit.")
        prod.save(flush: true, failOnError: true)

        new File( './grails-app/assets/images/products' ).eachFile() {
            f ->
                // imports images
                def img = new Image(fileName: f.getName())
                img.save(flush: true, failOnError: true)

        }
    }
    def destroy = {
    }
}
