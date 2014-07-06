import hipponade.Image
import hipponade.User

class BootStrap {

    def init = { servletContext ->

        def User user = new User(username: "test", password: "test")
        user.save()


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
