import hipponade.Image
import hipponade.Product
import hipponade.User

class BootStrap {

    def init = { servletContext ->

        def User user = new User(username: "test", password: "test")
        user.save(flush: true)

        def Product prod = new Product(name: "Colanade", shortDescription: "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.")
        prod.save(flush: true)

        new File( './grails-app/assets/images/products' ).eachFile() {
            f ->
                // imports images
                def img = new Image(fileName: f.getName())
                img.save(flush: true)

        }
    }
    def destroy = {
    }
}
