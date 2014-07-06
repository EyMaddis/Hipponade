import hipponade.User

class BootStrap {

    def init = { servletContext ->

        def User user = new User(username: "test", password: "test")
        user.save()

    }
    def destroy = {
    }
}
